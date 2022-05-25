import 'package:flutter/material.dart';
import 'package:mkos/pages/loginpage.dart';
import 'package:mkos/widgets/card_menu.dart';

class MenuPage extends StatelessWidget {
  String? nama;

  MenuPage(this.nama);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[82],
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              width: screenWidth,
              height: screenHeight * 1 / 8,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.purpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo $nama',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Hemat kuy, jadi mau buat apa hari ini??',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 35,
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  cardMenu(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    makanan: 'Indomie Goreng',
                    deskripsi:
                        'Makanan sejuta umat anak kos untuk menemani akhir bulan',
                    gambar: 'indomie',
                  ),
                  cardMenu(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    makanan: 'Es Susu',
                    deskripsi: 'Minuman yang gak mahal mahal amat gan hwhwh',
                    gambar: 'susu',
                  ),
                  cardMenu(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    makanan: 'Nasi Goreng',
                    deskripsi: 'Makanan buat sisa nasi semalem lalu diolah',
                    gambar: 'nasi',
                  ),
                  cardMenu(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    makanan: 'Es teh Ayang',
                    deskripsi:
                        'Kenapa ayang? kan ayang manis, jadinya teh manis',
                    gambar: 'esteh',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return const LoginPage();
          }));
        },
        child: const Icon(Icons.logout_rounded),
      ),
    );
  }
}
