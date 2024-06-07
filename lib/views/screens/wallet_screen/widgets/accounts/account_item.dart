import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AccountItem extends StatefulWidget {
  const AccountItem({
    required this.account,
    required this.date,
    required this.user,
    super.key,
  });

  final AccountModel account;
  final UserModel user;
  final DateTime date;

  @override
  State<AccountItem> createState() => _AccountItemState();
}

class _AccountItemState extends State<AccountItem> {
  late final AccountRepository accountRepository =
      context.read<AccountRepository>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _navigateToAccountScreen,
      child: ListTile(
        leading: _buildAvatar(),
        title: _buildTitle(),
        subtitle: _buildSubtitle(),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 15,
        ),
      ),
    );
  }

  void _navigateToAccountScreen() {
    Navigator.of(context).push(
      MaterialPageRoute<AccountScreen>(
        builder: (_) => AccountScreen(
          user: widget.user,
          account: widget.account,
          date: widget.date,
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      backgroundColor: Color(widget.account.institution.backgroundColor),
      radius: 18,
      child: Image(
        image: AssetImage(widget.account.institution.icon),
        height: 25,
        width: 25,
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Text(
          widget.account.name,
          style: titleStyle,
          overflow: TextOverflow.ellipsis,
        ),
        _buildDescription(),
      ],
    );
  }

  Widget _buildDescription() {
    if (widget.account.description == null ||
        widget.account.description!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 8),
        const FaIcon(
          FontAwesomeIcons.arrowRight,
          color: Colors.grey,
          size: 10,
        ),
        const SizedBox(width: 8),
        Text(
          widget.account.description!,
          style: descriptionStyle,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildSubtitle() {
    return Number(
      size: 14,
      number: accountRepository.getBalanceOfAccount(
        account: widget.account,
        date: widget.date,
      ),
    );
  }

  static const TextStyle titleStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionStyle = TextStyle(
    color: Colors.grey,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.italic,
  );
}
