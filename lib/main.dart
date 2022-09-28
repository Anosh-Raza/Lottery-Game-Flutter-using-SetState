import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
          backgroundColor: Colors.grey,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text('Lotery Number is 3')),
              SizedBox(height: 10),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.amber.shade500.withOpacity(.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: x == 3
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.green.shade600,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Congragulations $x It is matched',
                                textAlign: TextAlign.center,
                              ),
                              Text('You Won The Lottery'),
                            ])
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              Icon(
                                Icons.error,
                                color: Colors.red,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Better Luck Next Time Your Number is $x try again',
                                textAlign: TextAlign.center,
                              ),
                            ]),
                ),
              ),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              x = random.nextInt(5);
              print(x);
            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
