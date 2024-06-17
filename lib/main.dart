import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "0";

  Widget buildButton(String buttonText, Color buttonColor, Color textColor) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(20),
          backgroundColor: buttonColor, // background color
          foregroundColor: textColor, // text color
        ),
        onPressed: () {
          setState(() {
            output = buttonText;
          });
        },
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    output,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton('C', Colors.grey.shade800, Colors.white),
                buildButton('()', Colors.grey.shade800, Colors.white),
                buildButton('%', Colors.grey.shade800, Colors.white),
                buildButton('/', Colors.orange, Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton('7', Colors.grey.shade800, Colors.white),
                buildButton('8', Colors.grey.shade800, Colors.white),
                buildButton('9', Colors.grey.shade800, Colors.white),
                buildButton('*', Colors.orange, Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton('4', Colors.grey.shade800, Colors.white),
                buildButton('5', Colors.grey.shade800, Colors.white),
                buildButton('6', Colors.grey.shade800, Colors.white),
                buildButton('-', Colors.orange, Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton('1', Colors.grey.shade800, Colors.white),
                buildButton('2', Colors.grey.shade800, Colors.white),
                buildButton('3', Colors.grey.shade800, Colors.white),
                buildButton('+', Colors.orange, Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton('+/-', Colors.grey.shade800, Colors.white),
                buildButton('0', Colors.grey.shade800, Colors.white),
                buildButton('.', Colors.grey.shade800, Colors.white),
                buildButton('=', const Color.fromARGB(255, 255, 0, 0), Colors.white),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
