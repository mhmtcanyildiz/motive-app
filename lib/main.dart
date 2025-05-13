import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MotiveApp());
}

class MotiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motive Edici Sözler',
      home: MotiveScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MotiveScreen extends StatelessWidget {
  final List<String> cumleler = [
    "Ben özgüvenliyim ve kararlıyım.",
    "Hayatımı kontrol ediyorum.",
    "Her gün başarıya daha çok yaklaşıyorum.",
    "Zihnim bana hizmet ediyor.",
    "Ben büyük işler başaran bir liderim.",
    "Kendime değer katacak alışkanlıklarım var.",
    "Disiplinliyim ve sabırlıyım.",
    "Kendimle gurur duyuyorum."
  ];

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final secilenCumle = cumleler[random.nextInt(cumleler.length)];

    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                secilenCumle,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.grey[700], size: 30),
              onPressed: () {
                // Uygulamayı kapat
                Future.delayed(Duration(milliseconds: 200), () {
                  // Android uygulamasında çalışır
                  Navigator.of(context).maybePop();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
