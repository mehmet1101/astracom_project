import 'package:flutter/material.dart';
import 'package:test_1/pages/profile/compenents/profile_pic.dart';


class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(title: const Text('My Profile'),backgroundColor: Colors.blueGrey),
      body: Column(
        children:  [
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: ProfilePic(),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            child: TextField(
              decoration: InputDecoration(hintText: 'Name..',
              border: OutlineInputBorder()),
              
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            child: TextField(
              decoration: InputDecoration(hintText: 'Surname..',
              border: OutlineInputBorder()),
              
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            child: TextField(
              decoration: InputDecoration(hintText: 'Birth time',
              border: OutlineInputBorder()),
              
              
            ),
          ),const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            child: TextField(
              decoration: InputDecoration(hintText: 'Mail adress..',
              border: OutlineInputBorder()),
              
            ),
          ),
          ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.green),child: const Text('SAVE'),)
        ],
      ),
    );
  }
}
