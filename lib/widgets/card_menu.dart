import 'package:flutter/material.dart';

class cardMenu extends StatelessWidget {
  String? makanan;
  String? deskripsi;
  String? gambar;

  cardMenu({
    required this.screenHeight,
    required this.screenWidth,
    this.makanan,
    this.deskripsi,
    this.gambar,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: screenHeight * 1 / 4,
        width: screenWidth,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              height: screenHeight * 1 / 5,
              width: screenWidth * 2 / 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/$gambar.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth * 1 / 3,
                    height: 20,
                    child: Text(
                      '$makanan',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: screenWidth * 1 / 3,
                    height: screenHeight * 1 / 18,
                    child: Text(
                      '$deskripsi',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Mari kita buat"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
