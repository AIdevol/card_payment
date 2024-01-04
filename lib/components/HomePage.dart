import 'package:flutter/material.dart';
// import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';
import 'widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Color selectedColor = Color.fromARGB(255, 13, 37, 56);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Payments"),
        centerTitle: true,
        // backgroundColor: selectedColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightSpacer(35.00),
              buildCardList(context),
              heightSpacer(45.00),
              buildSummary(),
              buildDivider(),
              buildItem1(),
              buildCharges(),
              buildTotal(),
              buildPayBtn(),
            ],
          ),
        ),
      ),
    );
  }
}

