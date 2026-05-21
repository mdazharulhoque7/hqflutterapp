import 'package:flutter/material.dart';

class HQAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  const HQAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      // The flexibleSpace property allows you to put a widget behind the AppBar content
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color.fromARGB(255, 6, 49, 8), Color.fromARGB(255, 6, 71, 18)],
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(185, 27, 27, 27),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
      ),
    );
  }
}


