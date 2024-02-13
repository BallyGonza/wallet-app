// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/add_transfer_screen/widgets/widgets.dart';
import 'package:wallet_app/views/views.dart';

class TransactionListItem extends StatefulWidget {
  const TransactionListItem({
    required this.user,
    required this.transaction,
    super.key,
  });

  final TransactionModel transaction;
  final UserModel user;

  @override
  State<TransactionListItem> createState() => _TransactionListItemState();
}

class _TransactionListItemState extends State<TransactionListItem> {
  late TextEditingController amountController;
  late TextEditingController noteController;
  late AccountRepository accountRepository;
  late TransactionRepository transactionRepository;
  late AccountModel? account;
  late CategoryModel selectedCategory;
  late bool isIncome;

  @override
  void initState() {
    accountRepository = context.read<AccountRepository>();
    transactionRepository = context.read<TransactionRepository>();
    account = transactionRepository.getAccountOfTransaction(
      widget.user.accounts,
      widget.transaction,
    );
    amountController =
        TextEditingController(text: widget.transaction.amount.toString());
    noteController = TextEditingController(text: widget.transaction.note);
    selectedCategory = widget.transaction.category;
    isIncome = widget.transaction.category.isIncome;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        account = transactionRepository.getAccountOfTransaction(
          widget.user.accounts,
          widget.transaction,
        );
        amountController =
            TextEditingController(text: widget.transaction.amount.toString());
        noteController = TextEditingController(text: widget.transaction.note);
        selectedCategory = widget.transaction.category;
        isIncome = widget.transaction.category.isIncome;
        return InkWell(
          enableFeedback: false,
          onTap: () {
            showModalBottomSheet<Container>(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              backgroundColor: appBackgroundColor,
              context: context,
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    children: [
                      DescriptionItem(
                        title: 'Category',
                        icon: widget.transaction.category.icon,
                        iconColor: widget.transaction.category.iconColor,
                        backgroundColor:
                            widget.transaction.category.backgroundColor,
                        description: widget.transaction.category.name,
                        transaction: widget.transaction,
                        onTap: () {
                          showCategoryModal(context);
                        },
                      ),
                      DescriptionItem(
                        title: 'Account',
                        icon: transactionRepository
                            .getAccountOfTransaction(
                              widget.user.accounts,
                              widget.transaction,
                            )!
                            .institution
                            .logo,
                        backgroundColor: account!.institution.backgroundColor,
                        description: account!.name,
                        transaction: widget.transaction,
                        onTap: () {
                          showAccountModal(context);
                        },
                      ),
                      DescriptionItem(
                        title: 'Amount',
                        icon: AppImages.coin,
                        backgroundColor: yellow,
                        description:
                            widget.transaction.category.name == 'Dolares'
                                ? dolar.format(widget.transaction.amount)
                                : arg.format(widget.transaction.amount),
                        descriptionColor: widget.transaction.category.isIncome
                            ? incomeColor
                            : expenseColor,
                        transaction: widget.transaction,
                        onTap: () {
                          showEditAmountDialog(context);
                        },
                      ),
                      DescriptionItem(
                        title: 'Date',
                        icon: AppImages.calendar,
                        backgroundColor: white,
                        description: dateFormat.format(widget.transaction.date),
                        transaction: widget.transaction,
                        onTap: () {
                          showModifyDatePicker(context);
                        },
                      ),
                      DescriptionItem(
                        title: 'Note',
                        icon: AppImages.pencil,
                        backgroundColor: white,
                        description: widget.transaction.note.isEmpty
                            ? 'None'
                            : widget.transaction.note,
                        transaction: widget.transaction,
                        onTap: () {
                          showModifyNoteDialog(context);
                        },
                      ),
                      const Spacer(),
                      ActionButton(
                        text: 'Delete',
                        onPressed: () {
                          context.read<AccountBloc>().add(
                                AccountEvent.removeTransaction(
                                  account!,
                                  widget.transaction,
                                ),
                              );
                          Navigator.pop(context);
                        },
                        color: Colors.red,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                );
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      Color(widget.transaction.category.backgroundColor),
                  child: Image(
                    image: AssetImage(widget.transaction.category.icon),
                    height: 25,
                    width: 25,
                    color: widget.transaction.category.iconColor == null
                        ? null
                        : Color(widget.transaction.category.iconColor!),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: widget.transaction.category.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 1,
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.arrowRight,
                                size: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: account!.name,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (account!.description != null)
                            TextSpan(
                              text: ' / ${account!.description}',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.normal,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          else
                            const TextSpan(),
                        ],
                      ),
                    ),
                    if (widget.transaction.note == '')
                      const SizedBox.shrink()
                    else
                      Column(
                        children: [
                          const SizedBox(height: 1),
                          Text(
                            widget.transaction.note,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 1),
                        ],
                      ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.transaction.category.name == 'Dolares'
                          ? dolar.format(widget.transaction.amount)
                          : arg.format(widget.transaction.amount),
                      style: TextStyle(
                        color: widget.transaction.category.isIncome
                            ? Colors.green
                            : Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      dateFormat.format(widget.transaction.date),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showModifyNoteDialog(BuildContext context) {
    showDialog<WalletAlertDialog>(
      context: context,
      builder: (_) => WalletAlertDialog(
        title: 'Editar nota',
        content: WalletDialogTextField(
          hint: 'Note',
          controller: noteController..text,
        ),
        primaryActionTitle: 'Save',
        onPressed: () {
          Navigator.of(context).pop();
          setState(() {
            context.read<AccountBloc>().add(
                  AccountEvent.updateTransaction(
                    account!,
                    null,
                    widget.transaction.copyWith(
                      note: noteController.text,
                    ),
                  ),
                );
          });
        },
      ),
    );
  }

  void showModifyDatePicker(BuildContext context) {
    FocusScope.of(context).unfocus();
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      lastDate: DateTime.now(),
      firstDate: DateTime.now().subtract(
        const Duration(days: 365),
      ),
    ).then((value) {
      context.read<AccountBloc>().add(
            AccountEvent.updateTransaction(
              account!,
              null,
              widget.transaction.copyWith(
                date: value,
              ),
            ),
          );
    });
  }

  Future<WalletAlertDialog?> showEditAmountDialog(BuildContext context) {
    return showDialog<WalletAlertDialog>(
      context: context,
      builder: (_) => WalletAlertDialog(
        title: 'Editar monto',
        content: WalletDialogTextField(
          hint: 'Amount',
          controller: amountController..text,
        ),
        primaryActionTitle: 'Save',
        onPressed: () {
          setState(() {
            context.read<AccountBloc>().add(
                  AccountEvent.updateTransaction(
                    account!,
                    null,
                    widget.transaction.copyWith(
                      amount: double.parse(
                        amountController.text.replaceAll(',', '.'),
                      ),
                    ),
                  ),
                );
          });
        },
      ),
    );
  }

  Future<Padding?> showAccountModal(BuildContext context) {
    return showModalBottomSheet<Padding>(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      backgroundColor: colorCards,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: widget.user.accounts.length * 80,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: widget.user.accounts.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      context.read<AccountBloc>().add(
                            AccountEvent.updateTransaction(
                              account!,
                              widget.user.accounts[index],
                              widget.transaction,
                            ),
                          );
                    });
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: AccountListItem(
                    account: widget.user.accounts[index],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Future<Padding?> showCategoryModal(BuildContext context) {
    return showModalBottomSheet<Padding>(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      backgroundColor: colorCards,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: isIncome
                ? defaultIncomeCategories.length * 200
                : defaultExpenseCategories.length * 60,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: isIncome
                  ? defaultIncomeCategories.length
                  : defaultExpenseCategories.length,
              itemBuilder: (context, index) {
                return CategoryListItem(
                  onCategoryTap: () {
                    setState(() {
                      context.read<AccountBloc>().add(
                            AccountEvent.updateTransaction(
                              account!,
                              null,
                              widget.transaction.copyWith(
                                category: isIncome
                                    ? defaultIncomeCategories[index]
                                    : defaultExpenseCategories[index],
                              ),
                            ),
                          );
                    });
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  onSubCategoryTap: (int subIndex) {
                    setState(() {
                      context.read<AccountBloc>().add(
                            AccountEvent.updateTransaction(
                              account!,
                              null,
                              widget.transaction.copyWith(
                                category: isIncome
                                    ? defaultIncomeCategories[index]
                                        .subCategories[subIndex]
                                    : defaultExpenseCategories[index]
                                        .subCategories[subIndex],
                              ),
                            ),
                          );
                    });
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  category: isIncome
                      ? defaultIncomeCategories[index]
                      : defaultExpenseCategories[index],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.description,
    required this.transaction,
    super.key,
    this.iconColor,
    this.descriptionColor,
    this.onTap,
  });

  final String title;
  final String icon;
  final int? iconColor;
  final int backgroundColor;
  final String description;
  final Color? descriptionColor;
  final TransactionModel transaction;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(backgroundColor),
                  child: Image(
                    image: AssetImage(icon),
                    height: 25,
                    width: 25,
                    color: iconColor != null ? Color(iconColor!) : null,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              description,
              style: TextStyle(
                color: descriptionColor ?? Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
