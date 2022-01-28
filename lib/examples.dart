// ignore_for_file: file_names

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class Examples extends StatefulWidget {
  const Examples({Key? key}) : super(key: key);

  @override
  _ExamplesState createState() => _ExamplesState();
}

class _ExamplesState extends State<Examples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),
      appBar: AppBar(
        title: const Text(
          'Madárnyelv App - Példaszövegek',
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
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                children: [
                  const Text(
                    'Kattints a szövegre, hogy kimásold, majd menj vissza és illeszd be a bemeneti mezőbe! \n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Szia, hogy vagy?');
                      _showToast(context);
                    },
                    child: const Text(
                      'Szia, hogy vagy? \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Kapcsold ki a tévét te teve!');
                      _showToast(context);
                    },
                    child: const Text(
                      'Kapcsold ki a tévét te teve! \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Te tudsz így beszélni?');
                      _showToast(context);
                    },
                    child: const Text(
                      'Te tudsz így beszélni? \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Tudok');
                      _showToast(context);
                    },
                    child: const Text(
                      'Tudok \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Luke! Én vagyok az apád.');
                      _showToast(context);
                    },
                    child: const Text(
                      'Luke! Én vagyok az apád. \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('A Madárnyelv App-ot használom.');
                      _showToast(context);
                    },
                    child: const Text(
                      'A Madárnyelv App-ot használom. \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Helló világ!');
                      _showToast(context);
                    },
                    child: const Text(
                      'Helló világ! \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Árvíztűrő tükörfúrógép');
                      _showToast(context);
                    },
                    child: const Text(
                      'Árvíztűrő tükörfúrógép \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Bőszájú körülíróművész.');
                      _showToast(context);
                    },
                    child: const Text(
                      'Bőszájú körülíróművész. \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Tűzön tíz órát égő nyúlfül');
                      _showToast(context);
                    },
                    child: const Text(
                      'Tűzön tíz órát égő nyúlfül. \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Állj! Senki se mozduljon!');
                      _showToast(context);
                    },
                    child: const Text(
                      'Állj! Senki se mozduljon! \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Csavargó csavar');
                      _showToast(context);
                    },
                    child: const Text(
                      'Csavargó csavar \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Mendegél a mandarin');
                      _showToast(context);
                    },
                    child: const Text(
                      'Mendegél a mandarin \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Bús csiga csavarog a csövön');
                      _showToast(context);
                    },
                    child: const Text(
                      'Bús csiga csavarog a csövön \n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Madárnyelven beszélek');
                      _showToast(context);
                    },
                    child: const Text(
                      'Madárnyelven beszélek \n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy('Dezoksziribonukleinsav');
                      _showToast(context);
                    },
                    child: const Text(
                      'Dezoksziribonukleinsav \n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const Text(
                    '\n(A lista még bővűlni fog) \n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(const SnackBar(
      content: Text('Másolva'),
    ));
  }
}
