import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustButton extends StatelessWidget {
  const CustButton({Key? key, required this.svgPath, required this.inkColor, required this.buttonFn, }) : super(key: key);

  final String svgPath;
  final Color inkColor;
  final Function buttonFn;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20,top: 10,bottom: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            child: Stack(
                clipBehavior: Clip.hardEdge,
                alignment: AlignmentDirectional.center,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    splashColor: inkColor,
                    onTap: () {
                      buttonFn();
                    },
                    child: SvgPicture.asset(svgPath,
                      height: 60,
                      width: 40,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
