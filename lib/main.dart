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
  double result = 0;
  double first = 0;
  double second = 0;
  var action;
  void calc() {
    setState(() {
      if(action == 'add'){
        result = first + second;
      }
      else if(action == 'subtract'){
        result = first - second;
      }
      else if(action == 'multiply'){
        result = first * second;
      }
      else if(action == 'divide'){
        result = first / second;
      }
    });
  }


  void nothing() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('C',
                                    style: TextStyle(fontSize: 40, color: Colors.red))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('x',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('/',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: calc, child: const Text('=',
                                    style: TextStyle(fontSize: 40, color: Colors.green))),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('7',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('8',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('9',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('+',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('4',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('5',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('6',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('-',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('1',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('2',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text('3',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text(',',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 270.00,
                                    onPressed: nothing, child: const Text('0',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
                                MaterialButton(
                                    height: 90.00,
                                    minWidth: 90.00,
                                    onPressed: nothing, child: const Text(' ',
                                    style: TextStyle(fontSize: 40, color: Colors.black))),
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