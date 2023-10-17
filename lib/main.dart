import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/Countiner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Flutter Tune',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff253238),
          elevation: 0,
        ),
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                print('data');
                playSound() {
                  final player = AudioPlayer();
                  player.play(AssetSource('note1.wav'));
                }
              },
              child: Container1(
                back: const Color(0xffF44336),
              ),
            ),
            InkWell(
              onTap: () {
                // ignore: avoid_print
                print('object');
                playSound() {
                  final player = AudioPlayer();
                  player.play(AssetSource('note1.wav'));
                }
              },
              child: Container1(
                back: const Color(0xffF89800),
              ),
            ),
            Container1(back: const Color(0xffFEEB3B)),
            Container1(back: const Color(0xff4CAF50)),
            Container1(back: const Color(0xff2F9688)),
            Container1(back: const Color(0xff2896F3)),
            Container1(
              back: const Color(0xff9C27B0),
            )
          ],
        ),
      ),
    );
  }
}
