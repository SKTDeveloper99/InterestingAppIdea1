import 'package:cs4750_mobileapp/Menu_Bars/Friends_Screen.dart';
import 'package:cs4750_mobileapp/Menu_Bars/QRScan.dart';
import 'package:cs4750_mobileapp/Menu_Bars/Settings.dart';
import 'package:cs4750_mobileapp/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:cs4750_mobileapp/Menu_Bars/user_profile.dart';
import 'package:cs4750_mobileapp/Menu_Bars/user_cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class UserProfilePage extends StatefulWidget {

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    UserCardsPage(),
    QRScanPage(),
    FriendsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
            NetworkImage("https://placeimg.com/640/480/people"),
            //onPressed: () {},
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 27,
              ),
              onPressed: () {})
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.database),label: "Collection"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.qrcode),label: "QRScan"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userFriends),label: "Friends"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cog),label: "Settings"),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            }
            );
          }
      ),
    );
  }
}