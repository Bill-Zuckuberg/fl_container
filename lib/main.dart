import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, title: "Container", home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5),
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
            child: Container(
              color: Colors.red,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              transform: Matrix4.rotationZ(-0.1),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10),
                        right: Radius.elliptical(15, 80))),
                alignment: Alignment.topRight,
                child: const Text(
                  "a",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
