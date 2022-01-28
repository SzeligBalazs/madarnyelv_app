// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HowItWorks extends StatefulWidget {
  const HowItWorks({Key? key}) : super(key: key);

  @override
  _HowItWorksState createState() => _HowItWorksState();
}

class _HowItWorksState extends State<HowItWorks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),
      appBar: AppBar(
        title: const Text(
          'Madárnyelv App',
        ),
        elevation: 0,
        backgroundColor: Colors.lightBlue[200],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xFF696eff),
                  Color(0xFFf8acff),
                ]),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hogy működik? \n ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Az app neve Madárnyelv App. A madárnyelv egy kitalált nyelv. Azoknak, akik ismerik értelmes, a többieknek csak halandzsa. \n Az a lényege, hogy a mondat összes magánhangzója után írunk egy „v” betűt és utána írjuk az eredeti magánhangzót. Ezt a mondat összes magánhangzójával meg kell csinálni. \n Itt egy példa: Szia! = Sziviava! Ez elsőre nehéz, ugye? De pillanatok alatt hozzá tudsz szokni és vicces szövegeket tudsz küldeni a barátaidnak a különböző chat alkalmazásokban.\n Ezért találtam ki hozzá egy alkalmazást. \n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Mit tudok még csinálni? \n ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'El tudod küldeni a szöveget egy barátodnak a Megosztás gombbal. A Felolvasás gombbal fel tudod olvastatni. \n Ki tudsz választani példaszövegeket, ha rányomsz a Példaszövegek gombbra. \n',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Mi a küldönbség a Madárnyelv "R" és a Madárnyelv "V" között? \n ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'A Madárnyelv "R", V-betű hejett R-betűt tesz, (ez haladóknak ajánlott) a Madárnyelv "V", pedig R-betű hejett V-betűt tesz a mondatba.\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
