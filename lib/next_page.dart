import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      child: Image.asset(
                    'img/hp5.jpg',
                    width: 100,
                    height: 150,
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Xiaomi'),
                        Text('Xiaomi Redmi 10'),
                        Text('Rp. 1.530.000'),
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
                    'img/hp6.webp',
                    width: 100,
                    height: 150,
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Xiaomi'),
                        Text('Redmi 10 5G'),
                        Text('Rp. 2.475.000'),
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
                    'img/hp7.webp',
                    width: 100,
                    height: 150,
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Xiaomi'),
                        Text('Xiaomi 12 Lite 5G'),
                        Text('Rp. 5.425.000'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("back"),
          ),
        ],
      ),
    );
  }
}
