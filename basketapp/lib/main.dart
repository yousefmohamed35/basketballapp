import 'package:flutter/material.dart';

void main() {
  runApp(BasketApp());
}

class BasketApp extends StatefulWidget {
  @override
  State<BasketApp> createState() => _BasketAppState();
}

class _BasketAppState extends State<BasketApp> {
  int pointA = 0;

  int pointB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'TEAM A',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '$pointA',
                      style: TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(100, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          pointA++;
                        });
                      },
                      child: const Text(
                        'ADD 1 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(100, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          pointA += 2;
                        });
                      },
                      child: const Text(
                        'ADD 2 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(100, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          pointA += 3;
                        });
                      },
                      child: const Text(
                        'ADD 3 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 3,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'TEAM B',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '$pointB',
                      style: TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(100, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          pointB++;
                        });
                      },
                      child: const Text(
                        'ADD 1 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(100, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          pointB += 2;
                        });
                      },
                      child: const Text(
                        'ADD 2 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(100, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          pointB += 3;
                        });
                      },
                      child: const Text(
                        'ADD 3 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: const Size(100, 45),
              ),
              onPressed: () {
                setState(() {
                  pointA = 0;
                  pointB = 0;
                });
              },
              child: const Text(
                'RESET',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
