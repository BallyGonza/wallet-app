import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
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

  @override
  void initState() {
    context.read<SearchBarBloc>().add(
          const SearchBarEvent.init(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return SafeArea(
      child: BlocBuilder<SearchBarBloc, SearchBarState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (message) {
              return Center(
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
              );
            },
            loaded: (loadedTransactions) {
              return DecoratedBox(
                decoration: const BoxDecoration(
                  color: colorCards,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 60,
                      child: SearchBar(
                        surfaceTintColor: MaterialStateColor.resolveWith(
                          (states) => colorCards,
                        ),
                        hintText: 'Search',
                        controller: searchController,
                        onChanged: (value) {
                          context.read<SearchBarBloc>().add(
                                SearchBarSearchEvent(value),
                              );
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: loadedTransactions.length,
                        itemBuilder: (context, index) {
                          return TransactionListItem(
                            user: widget.user,
                            transaction: loadedTransactions[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
