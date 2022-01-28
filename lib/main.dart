import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

import 'package:madarnyelv_fordito/examples.dart';
import 'package:madarnyelv_fordito/how-it-works.dart';
import 'package:madarnyelv_fordito/madar-r.dart';

import 'package:share/share.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController inputController = TextEditingController();
  String text = "";
  String letter = "";
  var arr = List.filled(50, '', growable: true);
  int x = 0;
  String choose = "";
  bool isClicked = false;

  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF111111),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Column(
                        children: [
                          Text(
                            '\n Madárnyelv "V"',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF111111),
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.all(15)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.transparent),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MadarR()));
                              },
                              child: Text(
                                'Váltás Madárnyelv "R"-módra',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Center(
                            child: TextField(
                              textCapitalization: TextCapitalization.sentences,
                              style: const TextStyle(color: Colors.white),
                              controller: inputController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  filled: true,
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  hintText: 'Írj ide valamit...',
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      inputController.clear();
                                    },
                                    icon: const Icon(Icons.clear),
                                  ),
                                  fillColor: const Color(0xFF222222)),
                              onChanged: (String value) {
                                setState(() {
                                  text = value;
                                  text = arr.join();
                                  text = inputController.text;
                                  arr.clear();
                                  for (int i = 0; i < text.length; i++) {
                                    letter = text[i];
                                    if (letter == 'a' ||
                                        letter == 'á' ||
                                        letter == 'e' ||
                                        letter == 'é' ||
                                        letter == 'i' ||
                                        letter == 'í' ||
                                        letter == 'o' ||
                                        letter == 'ó' ||
                                        letter == 'ö' ||
                                        letter == 'ő' ||
                                        letter == 'u' ||
                                        letter == 'ú' ||
                                        letter == 'ü' ||
                                        letter == 'ű' ||
                                        letter == 'A' ||
                                        letter == 'Á' ||
                                        letter == 'E' ||
                                        letter == 'É' ||
                                        letter == 'I' ||
                                        letter == 'Í' ||
                                        letter == 'O' ||
                                        letter == 'Ó' ||
                                        letter == 'Ö' ||
                                        letter == 'Ő' ||
                                        letter == 'U' ||
                                        letter == 'Ú' ||
                                        letter == 'Ü' ||
                                        letter == 'Ű') {
                                      arr.add(text[i]);
                                      x++;
                                      arr.add('v');
                                      x++;
                                      arr.add(text[i].toLowerCase());
                                      x++;
                                    } else {
                                      arr.add(text[i]);
                                      x++;
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xFFbbff5a),
                            Color(0xFF1dc5ff),
                          ]),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: const Text('Megosztás'),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF222222)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {
                        Share.share(arr.join());
                      },
                    ),
                    ElevatedButton(
                      child: const Text('Felolvasás'),
                      onPressed: () => _speak(),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF222222)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                    ),
                  ],
                ),
              ),
              Text(
                '\n Fordítás: \n\n\n ' + arr.join() + '\n\n\n\n',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: const Text('Példaszövegek'),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF222222)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Examples()));
                      },
                    ),
                    /*  ElevatedButton(
                      child: const Icon(Icons.settings),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF222222)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settings()));
                      },
                    ), */
                    ElevatedButton(
                      child: const Text('Hogy működik?'),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF222222)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HowItWorks()));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(const SnackBar(
      content: Text(
        'Addig nem tudod elküldeni, amíg nem írtál be semmit',
        style: TextStyle(color: Colors.redAccent),
      ),
    ));
  }

  Future _speak() async {
    await flutterTts.setLanguage('hu-HU');
    await flutterTts.speak(arr.join());
  }
}
