import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Appbartheme extends StatelessWidget {
  const Appbartheme({super.key});

  @override
  Widget build(BuildContext context) {
    return const TopBar();
  }
}

class TopBar extends StatefulWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      )),
    );
  }
}
