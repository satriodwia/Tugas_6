import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas_6/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _isBool = false;

  void _setBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = !_isBool;
    });
    prefs.setBool('isbool', _isBool);
  }

  //2
  void _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = prefs.getBool('isbool') ?? _isBool;
    });

    if (_isBool) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NextPage(),
        ),
      );
    }
  }

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      child: Image.asset(
                    'img/hp1.jpg',
                    width: 100,
                    height: 150,
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Vivo'),
                        Text('Vivo Y20'),
                        Text('Rp. 3.500.000'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      child: Image.asset(
                    'img/hp2.jpg',
                    width: 100,
                    height: 150,
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Apple'),
                        Text('Iphone 14 Pro'),
                        Text('Rp. 18.500.000'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      child: Image.asset(
                    'img/hp3.png',
                    width: 100,
                    height: 150,
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Vivo'),
                        Text('Vivo V20'),
                        Text('Rp. 5.000.000'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _setBool();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NextPage(),
                ),
              );
            },
            child: Text('Pages 2'),
          ),
        ],
      ),
    );
  }
}
