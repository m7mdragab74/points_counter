import 'package:flutter/material.dart';

void main()
{
  runApp(const PointsCounter());
}
class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
int teamAPoints=0;

int teamBPoints=0;

void addOnePoint()
{
  print('add one point');
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.orangeAccent,
          title: const Text('Points Counter',
           style: TextStyle(
              color: Colors.white
        )
          )
        ),
        body: Column(
          children: [
          const SizedBox(
            height: 8,
          ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                     Column(
                      children: [
                                   const Text('Team A',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                    ),
                       Text('$teamAPoints',
                    style: const TextStyle(
                      fontSize: 170,
                    ),
                    ),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                         teamAPoints++;
                        });
                      },
                     child: const Text('Add 1 point',
                     style: TextStyle(
                      fontSize: 18,
                     ),
                     ),
                     ),
                       const SizedBox(
                      height: 10,
                     ),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                         teamAPoints+=2;
                        });
                      },
                     child: const Text('Add 2 point',
                                 style: TextStyle(
                      fontSize: 18,
                     ),
                     ),
                     ),
                     const SizedBox(
                      height: 10,
                     ),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                         teamAPoints+=3;
                        });
                      },
                     child: const Text('Add 3 point',
                                 style: TextStyle(
                      fontSize: 18,
                     ),
                     ),
                     ),
                      ],
                     ),
                const SizedBox(
                  height:390,
                  child: Row(
                    children: [VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    ],
                  ),
                ),

            Column(
              children: [
                 const Text('Team B',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                    ),
                
                     Text('$teamBPoints',
                    style: const TextStyle(
                      fontSize: 170,
                    ),
                    ),
                       ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                         teamBPoints++;
                        });
                      },
                     child: const Text('Add 1 point',
                     style: TextStyle(
                      fontSize: 18,
                     ),
                     ),
                     ),
                        const SizedBox(
                      height: 10,
                     ),
                        ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: (){
                         setState(() {
                         teamBPoints+=2;
                        });
                      },
                     child: const Text('Add 2 point',
                                 style: TextStyle(
                      fontSize: 18,
                     ),
                     ),
                     ),
                        const SizedBox(
                      height: 10,
                     ),
                       ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: (){
                         setState(() {
                         teamBPoints+=3;
                        });
                      },
                     child: const Text('Add 3 point',
                                 style: TextStyle(
                      fontSize: 18,
                     ),
                     ),
                     ),
              ],
            ),
               ],
            ),
          
          
          
          const SizedBox(
            height: 64,
          ),
        ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: (){
                         setState(() {
                         teamAPoints=0;
                         teamBPoints=0;
                        });
                      },
                     child: const Text('Reset',
                                 style: TextStyle(
                      fontSize: 18,
                     ),
                     ),
                     ),
          ],
        ),
      ),
    );
  }
}