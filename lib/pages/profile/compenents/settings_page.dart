import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          backgroundColor: Colors.blueGrey,
        ),
        body: const Center(
          child: CheckedBox(),
        ));
  }
}

class CheckedBox extends StatefulWidget {
  const CheckedBox({super.key});

  @override
  State<CheckedBox> createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBox> {
  bool isChecked = false;
  bool autoUpdate = false;
  bool rememberMe = false;
  bool whiteTheme = false;
  bool blackTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 251, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: const Text(
                'Check Updates',
                style: TextStyle(fontSize: 21),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              title: const Text(
                'Auto Update',
                style: TextStyle(fontSize: 21),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: autoUpdate,
              onChanged: (value) {
                setState(() {
                  autoUpdate = value!;
                });
              },
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              title: const Text(
                'Remember Me',
                style: TextStyle(fontSize: 21),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: rememberMe,
              onChanged: (value) {
                setState(() {
                  rememberMe = value!;
                });
              },
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              title: const Text(
                'White Theme',
                style: TextStyle(fontSize: 21),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: whiteTheme,
              onChanged: (value) {
                setState(() {
                  whiteTheme = value!;
                });
              },
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              title: const Text(
                'Black Theme',
                style: TextStyle(fontSize: 21),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: blackTheme,
              onChanged: (value) {
                setState(() {
                  blackTheme = value!;
                });
              },
              activeColor: Colors.green,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed:(){} ,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
             child: const Text('SAVE'),)
          ],
        ),
      ),
    );
  }
}
