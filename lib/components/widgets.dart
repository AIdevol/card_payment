import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

Widget heightSpacer(double myHeight) {
  return SizedBox(
    height: myHeight,
  );
}

Widget buildCardList(BuildContext context) {
  return Container(
    color: Colors.transparent,
    height: 200,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        buildPaymentCardWidget(context, Color(0xF25FFFFF), Color(0xFF2508FF)),
        SizedBox(
          width: 10,
        ),
        buildPaymentCardWidget(context, Color(0xFFFF9800), Color(0xFF9C2700)),
        SizedBox(
          width: 10,
        ),
        buildPaymentCardWidget(context, Color(0xFF76FF03), Color(0xFF9C27B0)),
        SizedBox(
          width: 10,
        ),
      ],
    ),
  );
}

Widget buildPaymentCardWidget(
    BuildContext context, Color color1, Color color2) {
  return FlipCard(
    direction: FlipDirection.VERTICAL,
    front: buildFrontFace(context, color1, color2),
    back: buildBackFace(context, color1, color2),
  );
}

Widget buildFrontFace(BuildContext context, Color color1, Color color2) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: <Color>[color1, color2]),
          borderRadius: new BorderRadius.circular(15)),
      width: (MediaQuery.of(context).size.width) - 50,
      height: 200,
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 25,
            child: Container(
              width: 60,
              height: 60,
              child: Image.asset(
                "assets/Mastercard-logo.png",
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 10,
            child: Container(
              width: 60,
              height: 60,
              child: Text(
                "12/50",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 25,
            child: Text(
              "DEMO BANK",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Positioned(
            bottom: 55,
            left: 25,
            child: Text(
              "1234   XXXX   XXXX   XXXX",
              style: TextStyle(color: Colors.white, fontSize: 17.5),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 25,
            child: Text(
              "AIdevol",
              style: TextStyle(color: Colors.grey[200], fontSize: 14.5),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildBackFace(BuildContext context, Color color1, Color color2) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: <Color>[color1, color2]),
          borderRadius: new BorderRadius.circular(15)),
      width: (MediaQuery.of(context).size.width) - 50,
      height: 200,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 25,
            child: Text(
              "LOST OR STOLEN, PLEASE RETURN TO ANY BRANCH OF YOUR BANK.",
              style: TextStyle(color: Colors.white, fontSize: 12.25),
            ),
          ),
          Positioned(
            top: 45,
            left: 0,
            child: Container(
              width: (MediaQuery.of(context).size.width) - 30,
              height: 40,
              color: Colors.black,
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            right: 50,
            child: Container(
              width: (MediaQuery.of(context).size.width) - 30,
              height: 40,
              color: Colors.white,
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: Text(
                      "XXX",
                      style: TextStyle(color: Colors.black, fontSize: 12.25),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 25,
            child: Text(
              "ISSUED BY YOUR BANK.",
              style: TextStyle(color: Colors.white, fontSize: 12.25),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildSummary() {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Container(
      child: Text(
        "Summary",
        style: TextStyle(color: Colors.indigo, fontSize: 20),
      ),
    ),
  );
}

Widget buildDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Divider(
      thickness: 1.5,
    ),
  );
}

Widget buildItem1() {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Container(
      child: ListTile(
        title: Text(
          "TV LG - 60' OLED CURVED",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          "UK 2160px - Smart 4K.",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        trailing: Text(
          " 150\$",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}

Widget buildCharges() {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Container(
      child: ListTile(
        title: Text(
          "Shipping",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          "Transportation Inclusive.",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        trailing: Text(
          " 2750\$",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}

Widget buildTotal() {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue[50],
      ),
      child: ListTile(
        title: Text(
          "TOTAL",
          style: TextStyle(
              fontSize: 22.5, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
        trailing: Text(
          "3000 \$",
          style: TextStyle(
              fontSize: 22.5, fontWeight: FontWeight.w600, color: Colors.blue),
        ),
      ),
    ),
  );
}

// Widget buildPayBtn() {
//   return Center(
//     child: Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(23.0),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             gradient: LinearGradient(colors: [
//               Colors.blue[700],
//               Colors.blue[400],
//             ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//           ),
//           height: 45,
//           width: 250,
//           child: RaisedButton(
//             elevation: 0,
//             onPressed: () {},
//             color: Colors.transparent,
//             child: Text(
//               "Pay Now",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
Widget buildPayBtn() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              colors: [Colors.blue[700]!, Colors.blue[400]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: 45,
          width: 250,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
            ),
            child: Text(
              "Pay Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

