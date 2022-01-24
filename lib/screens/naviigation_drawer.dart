import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/drawer_item.dart';
import 'package:login_signup_ui_starter/screens/login.dart';
import 'package:login_signup_ui_starter/screens/people.dart';
import 'package:login_signup_ui_starter/theme.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Drawer(
        child: Material(
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
            child: Column(
              children: [
                headerWidget(),
                const SizedBox(
                  height: 40,
                ),
                const Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 40,
                ),
                DrawerItem(
                  name: 'Students',
                  icon: Icons.people,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => People()),
                    );
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                DrawerItem(
                    name: 'Classes',
                    icon: Icons.account_tree_rounded,
                    onPressed: () {}),
                const SizedBox(
                  height: 30,
                ),
                DrawerItem(
                    name: 'Absent',
                    icon: Icons.adjust_outlined,
                    onPressed: () {}),
                const SizedBox(
                  height: 25,
                ),
                DrawerItem(
                    name: 'Exam Results',
                    icon: Icons.add_chart_sharp,
                    onPressed: () {}),
                const SizedBox(
                  height: 25,
                ),
                DrawerItem(
                    name: 'Expenses',
                    icon: Icons.account_balance_wallet,
                    onPressed: () {}),
                const SizedBox(
                  height: 25,
                ),
                const Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 25,
                ),
                DrawerItem(
                    name: 'Setting', icon: Icons.settings, onPressed: () {}),
                const SizedBox(
                  height: 25,
                ),
                DrawerItem(
                    name: 'Log out',
                    icon: Icons.logout,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LogInScreen()),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void onItemPressed(BuildContext context, {required int index}){
  //   Navigator.pop(context);

  //   switch(index){
  //     case 0:
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => const People()));
  //       break;
  //   }
  // }

  Widget headerWidget() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          // backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person name',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('person@email.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
