// ignore_for_file: unnecessary_new

import 'package:app8/screens/login.dart';
import 'package:app8/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(
              color: Color.fromARGB(255, 132, 74, 53),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 210, 183, 93),
      ),
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("images/1.jpg"))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 210, 183, 93)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Log_in();
                      },
                    ));
                  },
                  icon: const Icon(
                    Iconsax.login,
                    color: Color.fromARGB(255, 132, 74, 53),
                  ),
                  label: const Text(
                    "Log-In Page",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 132, 74, 53)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 210, 183, 93)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Sign_Up();
                      },
                    ));
                  },
                  icon: const Icon(
                    Iconsax.login,
                    color: Color.fromARGB(255, 132, 74, 53),
                  ),
                  label: const Text(
                    "Sign-Up Page",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 132, 74, 53)),
                  ),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
