import 'package:flutter/material.dart';

class Levels extends StatelessWidget {
  const Levels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: const Text(
                  'Select your IQ',
                  style: TextStyle(
                    fontFamily: 'AmericanType',
                    fontSize: 40,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red.shade300),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: height - 140,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: List.generate(100, (index) {
                    return Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text((index + 1).toString()),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(20, 60),
                          primary: Colors.amber
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
