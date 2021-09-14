import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double maxh = MediaQuery.of(context).size.height;
    double maxw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: maxw,
            child: Container(
              height: maxh * 0.5,
              color: Colors.blueAccent,
              child: Column(
                children: [
                  SizedBox(
                    height: maxh * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      Text("Expenses"),
                      Expanded(child: SizedBox()),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: maxh * 0.075,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                      Column(
                        children: [
                          Text(
                            "OCTOBER",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(
                            height: maxh * 0.05,
                          ),
                          Text(
                            "\$5,060",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: maxh * 0.4,
            left: 0,
            width: maxw,
            child: Container(
              height: maxh * 0.3,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: maxw,
            child: Container(
              height: maxh * 0.4,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
            ),
          ),
        ],
      ),
    );
  }
}
