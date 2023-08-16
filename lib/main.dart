import 'package:flutter/material.dart';

import 'constant/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notez',
      theme: ThemeData(
        primaryColor: Constant().brown1,
        primarySwatch: Colors.brown,
      ),
      home: const Home(),
    );
  }
}

//halaman home
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constant().brown1,
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                color: Constant().brown3,
                height: 423,
              ),
              Container(
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: ExactAssetImage('images/texture.jpg')),
                ),
                child: Stack(children: [
                  Image.asset('images/texture.jpg'),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(20, 74, 20, 20),
                      child: Column(
                        children: [
                          HabitCircle(),
                          HabitDot(),
                          HabitCircle(),
                          HabitDot(),
                          HabitCircle(),
                          HabitDot(),
                          HabitCircle(),
                        ],
                      )),
                ]),
              ),
            ],
          ),
          Container(
              decoration: BoxDecoration(
                  color: Constant().brown2,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.25),
                        blurRadius: 40,
                        offset: const Offset(-15, -15)),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 20,
                        offset: const Offset(10, 10))
                  ]),
              height: 315,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 153)),
        ]),
      ),
    );
  }
}

class HabitCircle extends StatelessWidget {
  const HabitCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Constant().white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.25),
                blurRadius: 40,
                offset: const Offset(-15, -15)),
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 3,
                offset: const Offset(4, 4))
          ]),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            color: Constant().white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.white.withOpacity(0.25),
                  blurRadius: 40,
                  offset: const Offset(-15, -15)),
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 10,
                  offset: const Offset(4, 4))
            ]),
      ),
    );
  }
}

class HabitDot extends StatelessWidget {
  const HabitDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Constant().black,
          width: 4,
          height: 2,
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          color: Constant().black,
          width: 4,
          height: 5,
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          color: Constant().black,
          width: 4,
          height: 2,
        ),
      ],
    );
  }
}
