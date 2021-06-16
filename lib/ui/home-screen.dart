import 'dart:math';

import 'package:flutter/material.dart';

class LoveCalculator {
  String yourName;
  String betterHalfName;

  LoveCalculator({required this.yourName, required this.betterHalfName});

  int calculate() {
    Random random = new Random();
    return random.nextInt(100);
  }


}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isLoading = false;
  int percentageCalc = 0;


  final nameController = TextEditingController();
  final betterNameController = TextEditingController();




  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text("Love Calculator"),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.pink
                      )
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.pink
                      )
                  ),
                  focusColor: Colors.pink,
                  labelStyle: TextStyle(color: Colors.pink),
                  labelText: 'Your Better Half Name',
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: betterNameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.pink
                      )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink
                    )
                  ),  labelStyle: TextStyle(color: Colors.pink),

                  labelText: 'Your Better Half Name',
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Colors.pink,
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  color: Colors.pink,
                  onPressed: () {
                    setState(() {
                      percentageCalc = LoveCalculator(yourName: nameController.value.text, betterHalfName: betterNameController.value.text).calculate();
                      isLoading = true;

                    });
                  },
                  child: Text(
                    "Calculate!",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),

          if(isLoading)
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Your Love Caluculated is $percentageCalc%"),
          )
        ],
      ),
    );
  }
}
