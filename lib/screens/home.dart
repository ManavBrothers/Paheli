import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import '../custom_widget/menu.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.heightOfQue}) : super(key: key);

  final double heightOfQue;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    height: 80,
                    margin: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      'assets/images/sphal.svg',
                    ),
                  ),
                  Container(
                    child: Lottie.asset('assets/images/riddle.json'),
                    height: widget.heightOfQue,
                  ),
                  Menu()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
