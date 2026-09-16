import 'package:flutter/material.dart';
import 'Login.dart';
import 'package:flutter/material.dart';
import 'Registor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        centerTitle: true,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Card(
            elevation: 10,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    height: 50,
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter Your Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),


                  const SizedBox(height: 15),

                  Container(
                    height: 50,
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter Your Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),


                  const SizedBox(height: 15),

                  Container(
                    height: 50,
                    width: 400,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Enter Your Password",
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                  ),


                  const SizedBox(height: 15),

                  SizedBox(
                    height: 50,
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter Your Address",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),


                  SizedBox(height: 15),

                  Container(
                    height: 50,
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter Your Phone",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    height: 50,
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter Your City",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    height: 50,
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter Your State",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(height: 25),

                  Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent
                    ),

                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MaterialXLoginScreen()));
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}