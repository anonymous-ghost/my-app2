import 'package:flutter/material.dart';

void main() {
  runApp(const PixelArtApp());
}

class PixelArtApp extends StatelessWidget {
  const PixelArtApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Піксельне відображення - Цифра 2'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _pixelArt.length,
                  (rowIndex) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _pixelArt[rowIndex].length,
                      (colIndex) => _pixelArt[rowIndex][colIndex]
                      ? _buildPixel()
                      : const SizedBox(
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPixel() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.grey, width: 3),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

// Матричне представлення цифри 2
const List<List<bool>> _pixelArt = [
  [false, true, true, true, false],
  [true, false, false, false, true],
  [false, false, false, true, true],
  [false, false, true, true, false],
  [false, true, true, false, false],
  [true, true, false, false, false],
  [true, true, true, true, true],
];
