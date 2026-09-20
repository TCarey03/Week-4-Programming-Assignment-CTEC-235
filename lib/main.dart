import 'package:flutter/material.dart';

void main() {
  runApp(const BradyBunchApp());
}

class BradyBunchApp extends StatelessWidget {
  const BradyBunchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            BradyTile(
              imagePath: 'assets/images/marcia.jpg',
            ),
            BradyTile(
              imagePath: 'assets/images/carol.jpg',
            ),
            BradyTile(
              imagePath: 'assets/images/greg.jpg',
            ),
            BradyTile(
              imagePath: 'assets/images/jan.jpg',
            ),
            BradyTile(
              imagePath: 'assets/images/alice.jpg',
            ),
            BradyTile(
              imagePath: 'assets/images/peter.jpg',
            ),
            BradyTile(
              imagePath: 'assets/images/cindy.jpg',
            ),
            BradyTile(
              imagePath: 'assets/images/mike.jpg',
            ),
            BradyTile(
              imagePath: 'assets/images/bobby.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class BradyTile extends StatelessWidget {
  final String imagePath;

  const BradyTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      color: Colors.black,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
