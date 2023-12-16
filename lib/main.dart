import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballCounterApp());
}

class BasketballCounterApp extends StatefulWidget {
  const BasketballCounterApp({super.key});

  @override
  State<BasketballCounterApp> createState() => _BasketballCounterAppState();
}

class _BasketballCounterAppState extends State<BasketballCounterApp> {
    int teamAPoints = 0;
    int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Points Counter'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                          teamAPoints++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(110, 50),
                        ),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                          teamAPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(110, 50),
                        ),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                          teamAPoints += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(110, 50),
                        ),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 380,
                    child: VerticalDivider(
                      thickness: 2,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                          teamBPoints++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(110, 50),
                        ),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                          teamBPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(110, 50),
                        ),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                          teamBPoints += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(110, 50),
                        ),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 70),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(220, 40),
                  ),
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}