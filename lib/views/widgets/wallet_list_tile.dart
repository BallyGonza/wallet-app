import 'package:flutter/material.dart';

class WalletListTile extends StatelessWidget {
  const WalletListTile({
    required this.content,
    this.leading,
    this.trailing,
    this.onTap,
    super.key,
  });

  final Widget content;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap ?? () {},
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (leading != null) leading!,
                SizedBox(width: 10),
                Expanded(child: content),
                if (trailing != null) trailing!,
              ],
            ),
          ),
        ),
        const Divider(color: Colors.black)
      ],
    );
  }
}
