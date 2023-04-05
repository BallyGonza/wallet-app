import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({
    Key? key,
    required this.account,
    required this.usersRepository,
    required this.user,
  }) : super(key: key);

  final AccountModel account;
  final UserRepository usersRepository;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(account.institution.color),
        radius: 18,
        child: Image.asset(
          account.institution.image,
          width: 24,
        ),
      ),
      title: Text(
        account.name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        '\$ ${amountFormat.format(usersRepository.getAccountBalance(account, user.transactions))}',
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: usersRepository.getAccountBalance(
                          account, user.transactions) >=
                      0
                  ? Colors.green
                  : Colors.red,
            ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 15,
      ),
    );
  }
}
