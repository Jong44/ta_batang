import 'package:batang_app/config/ColorConfig.dart';
import 'package:batang_app/page/MainPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 70.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat Datang",
              style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
                color: Colorconfig.primaryColor,
              ),
            ),
            Text(
              "Silahkan masukan email dan kata sandi anda",
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colorconfig.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "Email atau Username",
                labelStyle: TextStyle(
                  color: Colorconfig.primaryColor,
                ),
                hintText: "Masukan email atau username",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colorconfig.primaryColor)),
                labelText: "Kata Sandi",
                labelStyle: TextStyle(color: Colorconfig.primaryColor),
                hintText: "Masukan kata sandi",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              },
              child: Text(
                "Masuk",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50.0),
                backgroundColor: Colorconfig.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
