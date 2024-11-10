import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
          foregroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Team A Column with fixed width
                SizedBox(
                  width: 150, // Fixed width container
                  child: Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      SizedBox(
                        height: 190, // Fixed height for score container
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            '$teamAPoints',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(120, 40), // Fixed button size
                          ),
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 18),
                          )),
                      const SizedBox(height: 16),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(120, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              teamAPoints += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Points',
                            style: TextStyle(fontSize: 17),
                          )),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(120, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                // Team B Column with fixed width
                SizedBox(
                  width: 150, // Fixed width container
                  child: Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      SizedBox(
                        height: 190, // Fixed height for score container
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            '$teamBPoints',
                            style: const TextStyle(
                              fontSize: 165,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(120, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBPoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 18),
                          )),
                      const SizedBox(height: 16),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(120, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBPoints += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Points',
                            style: TextStyle(fontSize: 17),
                          )),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(120, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 64),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                minimumSize: const Size(120, 40),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}