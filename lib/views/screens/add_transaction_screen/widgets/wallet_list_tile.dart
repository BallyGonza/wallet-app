import 'package:flutter/material.dart';

class WalletListTile extends StatelessWidget {
  const WalletListTile({
    required this.content,
    this.leading,
    this.subtitle,
    this.onTap,
    this.trailing,
    super.key,
  });

  final Widget content;
  final Widget? leading;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: leading,
      title: content,
      subtitle: subtitle,
      onTap: onTap,
      trailing: trailing ??
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 16,
          ),
    );
  }
}
