import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/views/views.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    required this.user,
    super.key,
  });
  final UserModel user;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final accountRepository = AccountRepository();
  late List<TransactionModel> transactions;

  @override
  void initState() {
    super.initState();
    transactions = accountRepository.getAllTransactions(
      widget.user,
    );
  }

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          surfaceTintColor: MaterialStateColor.resolveWith(
            (states) => Colors.transparent,
          ),
          hintText: 'Search',
          controller: searchController,
          onTap: () {
            setState(() {
              transactions = accountRepository.getAllTransactions(
                widget.user,
              );
            });
          },
          onSubmitted: (value) {
            setState(() {
              transactions = transactions
                  .where(
                    (element) => element.category.name
                        .toLowerCase()
                        .contains(value.toLowerCase()),
                  )
                  .toList();
            });
          },
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.75,
        child: transactions.isEmpty
            ? const Center(
                child: Text(
                  'No transactions found.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            : ListView.separated(
                separatorBuilder: (context, index) => Container(
                  height: 0.1,
                  color: Colors.grey,
                ),
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  return TransactionListItem(
                    transaction: transactions[index],
                    user: widget.user,
                  );
                },
              ),
      ),
    );
  }
}
