import 'package:flutter/material.dart';
import 'package:smart_app/account_page.dart';
import 'package:smart_app/home_page.dart';
import 'package:smart_app/loan_confirm_data.dart';
import 'package:smart_app/savings.dart';
import 'package:smart_app/target_savings.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _auth = FirebaseAuth.instance.currentUser;

  late User loggedInUser;

  // @override
  // void initState() {
  //   super.initState();

  //   getCurrentUser();
  // }

  // void getCurrentUser() async {
  //   try {
  //     final user = await _auth.currentUser;
  //     if (user != null) {
  //       loggedInUser = user;
  //       print(loggedInUser.email);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }

  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOPtions = <Widget>[
    HomePage(),
    Savings(),
    LoanConfirmData(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: _widgetOPtions.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff0063AE),
        backgroundColor: Color(0xffFFFFFF),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/Home.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/Wallet.png'),
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/Work.png'),
            ),
            label: 'Work',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/Profile.png'),
            ),
            label: 'Profile',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
