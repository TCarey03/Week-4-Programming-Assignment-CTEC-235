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
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/marcia.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/carol.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/greg.jpg',
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/jan.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/alice.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/peter.jpg',
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/cindy.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/mike.jpg',
                    ),
                  ),
                  Expanded(
                    child: BradyTile(
                      imagePath: 'assets/images/bobby.jpg',
                    ),
                  ),
                ],
              ),
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
