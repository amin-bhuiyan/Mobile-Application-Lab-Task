import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D2D6),
      body: SafeArea(
        child: Column(
          children: [
            /// Top App Bar
            Container(
              height: 60,
              color: Colors.greenAccent,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(Icons.arrow_back),
                  const Spacer(),
                  const Text(
                    "4th April 2026",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),

            /// Info Row
            Row(
              children: [
                /// Roll
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 60,
                    color: Colors.redAccent,
                    alignment: Alignment.center,
                    child: const Text(
                      "22CSE046",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                /// Blood Group
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 60,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: const Text(
                      "O+",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                /// District
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 60,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: const Text(
                      "Munshigonj",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            /// Main Body
            Expanded(
              child: Stack(
                children: [
                  /// Registration Card
                  Center(
                    child: Container(
                      height: 100,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "1104622",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  /// Floating Nickname Button
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.purple, Colors.pink],
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Ratul",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}