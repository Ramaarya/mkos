import 'package:flutter/material.dart';
import 'package:mkos/pages/menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double smallDiameter(BuildContext contex) =>
        MediaQuery.of(context).size.width * 2 / 3;

    TextEditingController textEdit = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                left: -smallDiameter(context) * 2 / 7,
                top: -smallDiameter(context) * 1 / 5,
                child: Container(
                  width: smallDiameter(context),
                  height: smallDiameter(context),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xffb226b2), Colors.blue],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -smallDiameter(context) * 3 / 7,
                top: -smallDiameter(context) * 2 / 4,
                child: Container(
                  width: smallDiameter(context),
                  height: smallDiameter(context),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xffb226b2), Colors.blue],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -smallDiameter(context) * 3 / 7,
                bottom: -smallDiameter(context) * 2 / 4,
                child: Container(
                  width: smallDiameter(context),
                  height: smallDiameter(context),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xffb226b2), Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'M ',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        '- Kos',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: textEdit,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Your name...',
                    labelText: 'Your name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return MenuPage(textEdit.text);
                    }));
                  },
                  child: Container(
                    color: Colors.transparent,
                    width: 50,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: Text('Next'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
