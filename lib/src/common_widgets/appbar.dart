import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
    required this.title,
    this.headerIcon,
    this.actionIcon,
    this.bottom,
  });

  final String title;
  final IconButton? headerIcon;
  final List<Widget>? actionIcon;
  final TabBar? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: headerIcon,
      title: Text(title, style: Theme.of(context).textTheme.headlineMedium),
      actions: actionIcon,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
