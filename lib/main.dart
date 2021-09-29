import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isVisible = false;
  bool _isPasswordEightCharacter = false;
  bool _ishasPasswordNumber = false;

  onPasswordChanged(String password) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(
            "Create Your Account",
            style: const TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Set a Password ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please create a secure password including the following crieria below",
                style: TextStyle(
                    fontSize: 16, height: 1.5, color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: (password) => onPasswordChanged(password),
                obscureText: !_isVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    icon: _isVisible
                        ? Icon(
                            Icons.visibility,
                            color: Colors.black,
                          )
                        : Icon(Icons.visibility_off, color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: "Password",
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(microseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      border: _isPasswordEightCharacter
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Contains at least 8 characters"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(microseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Contains at least 1 Numbers"),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                height: 40,
                minWidth: double.infinity,
                color: Colors.black,
                child: Text(
                  "CREATE ACCOUNT",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ],
          ),
        ));
  }
}
