import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text('BERITA TERBARU',
                style: TextStyle(fontSize: 14),
                ),
                Text(
                  'PERTANDINGAN HARI INI',
                  style: TextStyle(fontSize: 14),
                ),
              ],
              ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            color: Colors.purpleAccent,
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVmlQrAeQLEWCY5ZqQS0IcbO3oEgjUMYwnZQ&usqp=CAU'),
                    fit: BoxFit.fill, 
                    ),
                    border: Border.all(
                      color: Colors.purpleAccent,
                      width: 10,
                ),
              ),
              height: 250,
              width: 400,
              ),
              Container(
                color: Colors.white,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(10),
                child: Text('Costa Mendekat Ke Palmeiras', style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  child: Text('Transfer'),)
              ],),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                child: Column(children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.blueGrey),
                        left: BorderSide(width: 1.0, color: Colors.blueGrey),
                        right: BorderSide(width: 1.0, color: Colors.blueGrey),
                        bottom: BorderSide(width: 1.0, color: Colors.blueGrey),),
                ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        Image(image: NetworkImage('data:image/jpeg;base64,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'),
                        fit: BoxFit.fill,),
                        Text('Pique Bilang Wasit Untungkan Madrid,Koeman Tepuk Jidat')
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.0, color: Colors.blueGrey),
                        right: BorderSide(width: 1.0, color: Colors.blueGrey),
                        bottom: BorderSide(width: 1.0, color: Colors.blueGrey),),
                        ),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.all(10),
                        child: 
                        Text('Barcelona Feb 13,2021'),)
                ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                child: Column(children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.blueGrey),
                        left: BorderSide(width: 1.0, color: Colors.blueGrey),
                        right: BorderSide(width: 1.0, color: Colors.blueGrey),
                        bottom: BorderSide(width: 1.0, color: Colors.blueGrey),),
                ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        Image(image: NetworkImage('data:image/jpeg;base64,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'),
                        fit: BoxFit.fill,),
                        Text('Pique Bilang Wasit Untungkan Madrid,Koeman Tepuk Jidat')
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.0, color: Colors.blueGrey),
                        right: BorderSide(width: 1.0, color: Colors.blueGrey),
                        bottom: BorderSide(width: 1.0, color: Colors.blueGrey),),
                        ),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.all(10),
                        child: 
                        Text('Barcelona Feb 13,2021'),)
                ],
                ),
              )
          ],
        ),
    );
  }
}
