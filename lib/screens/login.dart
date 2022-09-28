import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:queen_validators/queen_validators.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Log-In Page",
          style: TextStyle(
              color: Color.fromARGB(255, 132, 74, 53),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 210, 183, 93),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.amberAccent, Colors.brown])),
        alignment: Alignment.center,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: CircleAvatar(
                radius: 100,
                child:
                    Image(fit: BoxFit.fill, image: AssetImage("images/4.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                validator: qValidator([
                  IsRequired(),
                  const IsEmail(),
                  IsIn(["amer@live.com"]),
                ]),
                textAlign: TextAlign.center,
                maxLength: 20,
                maxLines: 1,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.people),
                    label: const Text("Email"),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: TextFormField(
                validator: qValidator([
                  IsRequired(),
                  IsIn(["1234"])
                ]),
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your Password",
                    label: const Text(
                      "Password",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: const Icon(Icons.people)),
                maxLines: 1,
                maxLength: 20,
                textAlign: TextAlign.center,
                obscureText: true,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final isFormValid = _formKey.currentState!.validate();
                  if (isFormValid) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: const [
                                Text(
                                    "Can you please wait until we check your credentials?"),
                                Icon(Ionicons.logo_android)
                              ],
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {}, child: Text("I wil wait")),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text("no i can't wait"))
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text("log-in"))
          ],
        ),
      ),
    );
  }
}
