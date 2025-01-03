import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    super.initState();
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
  }

  @override
  void dispose() {
    amountController.dispose();
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        updateControllersIfNeeded();
        return InkWell(
          onTap: () {
            showModalBottomSheet<Container>(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              backgroundColor: primaryColor,
              context: context,
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.45,
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
                            .icon,
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
                          Navigator.pop(context);
                          context.read<AccountBloc>().add(
                                AccountEvent.removeTransaction(
                                  account!,
                                  widget.transaction,
                                ),
                              );
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                _buildAvatarStack(),
                const SizedBox(width: 10),
                _buildTransactionDetails(),
                const Spacer(),
                _buildTrailingColumn(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAvatarStack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Color(widget.transaction.category.backgroundColor),
          child: Image(
            image: AssetImage(widget.transaction.category.icon),
            height: 20,
            width: 20,
            color: widget.transaction.category.iconColor == null
                ? null
                : Color(widget.transaction.category.iconColor!),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(),
            ),
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Color(account!.institution.backgroundColor),
              child: Image(
                image: AssetImage(account!.institution.icon),
                height: 13,
                width: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTransactionDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.transaction.category.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (widget.transaction.note.isNotEmpty)
          Text(
            widget.transaction.note,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
      ],
    );
  }

  Widget _buildTrailingColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildAmountDisplay(),
        const SizedBox(height: 3),
        _buildDateDisplay(),
      ],
    );
  }

  Widget _buildAmountDisplay() {
    final isIncome = widget.transaction.category.isIncome;
    final categoryName = widget.transaction.category.name;
    final amount = widget.transaction.amount;

    return Number(
      number: amount,
      size: 12,
      color: isIncome ? incomeColor : expenseColor,
      bold: true,
      isDolars: categoryName == 'Dolares',
    );
  }

  Widget _buildDateDisplay() {
    return Date(
      date: widget.transaction.date,
      bold: true,
      size: 9,
    );
  }

  void updateControllersIfNeeded() {
    final currentAmount = widget.transaction.amount.toString();
    if (amountController.text != currentAmount) {
      setState(() {
        amountController.text = currentAmount;
      });
    }
    if (noteController.text != widget.transaction.note) {
      setState(() {
        noteController.text = widget.transaction.note;
      });
    }
  }

  void showModifyNoteDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) => CustomAlertDialog(
        title: 'Editar nota',
        content: CustomDialogTextField(
          hint: 'Note',
          controller: noteController..text.trim(),
        ),
        primaryActionTitle: 'Save',
        onPrimaryPressed: () {
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
    final accountBloc = context.read<AccountBloc>();
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
      firstDate: DateTime.now().subtract(
        const Duration(days: 365),
      ),
    ).then((value) {
      if (mounted) {
        accountBloc.add(
          AccountEvent.updateTransaction(
            account!,
            null,
            widget.transaction.copyWith(
              date: value,
            ),
          ),
        );
      }
    });
  }

  Future<CustomAlertDialog?> showEditAmountDialog(BuildContext context) {
    return showDialog<CustomAlertDialog>(
      context: context,
      builder: (_) => CustomAlertDialog(
        title: 'Editar monto',
        content: CustomDialogTextField(
          hint: 'Amount',
          controller: amountController..text.trim(),
        ),
        primaryActionTitle: 'Save',
        onPrimaryPressed: () {
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
      backgroundColor: secondaryColor,
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
      backgroundColor: secondaryColor,
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
                    Navigator.pop(context);
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
