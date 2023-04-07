import 'package:flutter/material.dart';
import 'package:test_1/pages/profile/compenents/notifications_page.dart';
import 'package:test_1/pages/profile/compenents/profile_page_settings.dart';
import 'package:test_1/pages/profile/compenents/settings_page.dart';

class TextFields extends StatefulWidget {
  const TextFields({
    Key? key,
  }) : super(key: key);

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(9, 3, 9, 30),
          child: Container(
            height: 750,
            width: 420,
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFF80DEEA).withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 70),
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 50,left: 50,),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => const ProfileSettings()));},
                    style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal:90.0, vertical: 30.0), backgroundColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ), child: Row(mainAxisSize: MainAxisSize.min,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('My Profile ',style: TextStyle(fontSize: 16)),
                      const Icon(Icons.people_alt_outlined)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => const NotificationPage()));},
                    style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal:80, vertical: 30.0), backgroundColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ), child: Row(mainAxisSize: MainAxisSize.min,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('Notifications ',style: TextStyle(fontSize: 16)),
                      
                      const Icon(Icons.notifications),
                      
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 50,bottom: 50),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => const SettingsPage()));},
                    style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal:100.0, vertical: 30.0), backgroundColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ), child: Row(mainAxisSize: MainAxisSize.min,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('Settings ',style: TextStyle(fontSize: 16)),
                      const SizedBox(),
                      const Icon(Icons.settings)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => const ProfileSettings()));},
                    style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal:100.0, vertical: 30.0), backgroundColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ), child: Row(mainAxisSize: MainAxisSize.min,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('Log Out ',style: TextStyle(fontSize: 16)),
                      const SizedBox(),
                      const Icon(Icons.logout_outlined)
                    ],
                  ),
                ),
              ) 
              
            ],
          ),
        ),
      ],
    );
  }
}
