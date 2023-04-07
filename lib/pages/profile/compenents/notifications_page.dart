import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 21),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(children:  [
        const SizedBox(height: 120),
       
        Stack(
          children: [
            Container(margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 25,
            ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            height: 100,width: 400,
            child: const Padding(
              padding: EdgeInsets.only(left: 200),
              child: SwitchButton(),
            )),const Divider(height: 10,color: Colors.black12,thickness: 5)
            ,const Padding(
              padding: EdgeInsets.all(44.0,),
              child: Text('Messages',style: TextStyle(fontSize: 25,))
            ),
          ],
        ),
        const Divider(height: 0,color: Colors.black12,thickness: 5),
        Stack(
          children: [
            Container(margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 25,
            ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            height: 100,width: 400,
            child: const Padding(
              padding: EdgeInsets.only(left: 200),
              child: SwitchButton(),
            ))
            ,const Padding(
              padding: EdgeInsets.all(40.0,),
              child: Text('Daily Horoscope\nNotification',style: TextStyle(fontSize: 23,),)
            ),
          ],
        ),
        const Divider(height: 0,color: Colors.black12,thickness: 5),
        Stack(
          children: [
            Container(margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 25,
            ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            height: 100,width: 400,
            child: const Padding(
              padding: EdgeInsets.only(left: 200),
              child: SwitchButton(),
            ))
            ,const Padding(
              padding: EdgeInsets.all(44.0,),
              child: Text('Friend Requests',style: TextStyle(fontSize: 24,),)
            ),
            
          ],
        ),
        const Divider(height: 0,color: Colors.black12,thickness: 5),
        Stack(
          children: [
            Container(margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 25,
            ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            height: 100,width: 400,
            child: const Padding(
              padding: EdgeInsets.only(left: 200),
              child: SwitchButton(),
            ))
            ,const Padding(
              padding: EdgeInsets.all(44.0,),
              child: Text('Offers',style: TextStyle(fontSize: 25,),)
            ),
          ],
        ),
        const Divider(height: 0,color: Colors.black12,thickness: 5),
        
      ]),
    );
  }
}

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(.0),
        child: Container(
          width: 170,
          height: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),shape: BoxShape.rectangle),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: LiteRollingSwitch(
                //initial value
                value: true,
                textOn: 'On',
                textOff: 'Off',
                colorOn: Colors.greenAccent,
                colorOff: Colors.redAccent,
                iconOn: Icons.done,
                iconOff: Icons.remove_circle_outline,
                textSize: 16.0,
                onChanged: (bool state) {
                  //Use it to manage the different states
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
