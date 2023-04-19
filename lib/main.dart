import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
        theme: ThemeData(
        buttonTheme: const ButtonThemeData(
        buttonColor: Colors.red,
        shape: RoundedRectangleBorder(),
        textTheme: ButtonTextTheme.accent,
        ),
        ),

      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int temp = 0;
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";
  String result = "0";
  String numbers = "";
  void calc(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        result = "0";
        num1 = 0.0;
        num2 = 0.0;
        numbers = "";
        operand = "";
      }else if(buttonText == "-" && result == "0"){
        result = "";
        numbers += buttonText;
        result = ("-$result");
      } else if (buttonText == "+" || buttonText == "-" || buttonText == "×" || buttonText == "÷") {
        num1 = double.parse(result);
        operand = buttonText;
        numbers += buttonText;
        result = "0";
      } else if (buttonText == ",") {
        if (!result.contains(",")) {
          result += ".";
          numbers += buttonText;
        }
      } else if (buttonText == "=") {
        num2 = double.parse(result);
        if (operand == "+") {
          if ((num1 + num2) % 1 == 0) {
            temp = (num1 + num2).toInt();
            result = temp.toString();
          }
          else {
            result = (num1 + num2).toString();
          }
        }
        if (operand == "-") {
          if ((num1 - num2) % 1 == 0) {
            temp = (num1 - num2).toInt();
            result = temp.toString();
          }
          else {
            result = (num1 - num2).toString();
          }
        }

        if (operand == "×") {
          if ((num1 * num2) % 1 == 0) {
            temp = (num1 * num2).toInt();
            result = temp.toString();
          }
          else {
            result = (num1 * num2).toString();
          }
        }
        //if (operand == "÷") {
        //if (num2==0){
        // result = "You can't divide by 0";
        // }
        //else {
        // result = (num1 / num2).toString();
        //}
        // }
        if (operand == "÷") {
          if (num2 == 0) {
            result = "You can't divide by 0";
          }
          else {
            if ((num1 / num2) % 1 == 0) {
              temp = (num1 ~/ num2);
              result = temp.toString();
            }
            else {
              result = (num1 / num2).toString();
            }
          }
        }
        num1 = 0.0;
        num2 = 0.0;
        operand = "";
      } else {
        if (result == "0") {
          result = buttonText;
          numbers += buttonText;
        } else {
          result += buttonText;
          numbers += buttonText;
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(

            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              Container(
                width: 380,
                height: 220,
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(numbers, style: const TextStyle(fontSize: 20, color: Colors.white38)),
                    Text(result, style: const TextStyle(fontSize: 35, color: Colors.lightGreenAccent)),
                  ],
                ),
              ),

              Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('C'), child: const Text("C",
                                    style: TextStyle(fontSize: 40, color: Colors.red))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('÷'), child: const Text("÷",
                                    style: TextStyle(fontSize: 40, color: Colors.orangeAccent))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('×'), child: const Text("×",
                                    style: TextStyle(fontSize: 40, color: Colors.orangeAccent))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('='), child: const Text("=",
                                    style: TextStyle(fontSize: 40, color: Colors.green))),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('7'), child: const Text("7",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('8'), child: const Text("8",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('9'), child: const Text("9",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('-'), child: const Text("-",
                                    style: TextStyle(fontSize: 40, color: Colors.orangeAccent))),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('4'), child: const Text("4",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('5'), child: const Text("5",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('6'), child: const Text("6",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('+'), child: const Text("+",
                                    style: TextStyle(fontSize: 40, color: Colors.orangeAccent))),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('1'), child: const Text("1",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('2'), child: const Text("2",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc('3'), child: const Text("3",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: () => calc(','), child: const Text(",",
                                    style: TextStyle(fontSize: 40, color: Colors.orangeAccent))),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 270.00,
                                    onPressed: () => calc('0'), child: const Text("0",
                                    style: TextStyle(fontSize: 40, color: Colors.white70))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: null, child: const Text('',
                                    )),
                              ]
                          ),
                        ]
                    ),
                  ],
        ),
      ),
    );
  }

}
