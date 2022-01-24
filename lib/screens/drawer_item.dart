import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function() onPressed;

  const DrawerItem({Key key, this.name, this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.white,
            ),
            const SizedBox(
              width: 40,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
