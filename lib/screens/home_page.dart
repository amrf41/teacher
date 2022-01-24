import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/login.dart';
import 'package:login_signup_ui_starter/screens/naviigation_drawer.dart';
import 'package:login_signup_ui_starter/screens/people.dart';
import 'package:login_signup_ui_starter/theme.dart';
import 'package:flutter/cupertino.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("E-Teacher"),
        centerTitle: true,
        backgroundColor: kBlackColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Expanded(
            child: GridView.count(
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => People(),
                        ));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://st2.depositphotos.com/5425740/9532/v/380/depositphotos_95328970-stock-illustration-vector-group-of-students.jpg",
                          height: 120,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'All Students',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://www.vettrak.com.au/wp-content/uploads/2020/02/international_students.png",
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'CLasses',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://blog.edmentum.com/sites/blog.edmentum.com/files/styles/blog_image/public/images/pG8L9yxz.png?itok=ZSQYCSYR",
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Absent',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://pngimage.net/wp-content/uploads/2018/06/homework-cartoon-png-2.png",
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Exam Results',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://img0.etsystatic.com/186/0/271633908061/inv_fullxfull.1421945850_767vfd3d.jpg",
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Expenses',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogInScreen(),
                        ));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTku2oJC2M9rZu0jq3hLd7n_lgwUEFudUCVLu_XOo7bY0V_7ih5LsWA9p2LBVPFNkbVZx8&usqp=CAU",
                          height: 120,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
