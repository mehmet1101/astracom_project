import 'package:flutter/material.dart';
import 'text_fields.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
    
        SizedBox(height: 130),
       
        SizedBox(height: 15),
        TextFields(),
      ],
    );
  }
}
