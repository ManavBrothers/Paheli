import 'package:flutter/material.dart';
import 'package:paheli/screens/levels.dart';

import 'custom_button.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              children: [
                CustButton(
                  svgPath: 'assets/images/play.svg',
                  inkColor: Colors.red.shade900,
                  buttonFn: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Levels()));
                  },
                ),
                CustButton(
                  svgPath: 'assets/images/help.svg',
                  inkColor: Colors.blueAccent.shade700,
                  buttonFn: () {},
                ),
                CustButton(
                  svgPath: 'assets/images/Award.svg',
                  inkColor: Colors.green.shade700,
                  buttonFn: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.surround_sound,
                      size: 60,
                      color: Colors.blueAccent.shade700,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.info,
                      size: 60,
                      color: Colors.blueAccent.shade700,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
