import 'package:coffee_shop_app/screens/log_in_screen.dart';
import 'package:coffee_shop_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var store = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  List main = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 28,
            )),
        backgroundColor: Colors.orange,
        title: const Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: store,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 200),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^[A-Za-z ]+$')),
                      ],
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white60,
                        labelText: "Name",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: "Enter Your Name",
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "User Name Can't be Empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^[A-Za-z@.]+$')),
                      ],
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white60,
                        labelText: "Email id",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: "Enter Your Email id",
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email id Can't be Empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^[0-9A-Za-z@#$]+$')),
                      ],
                      obscureText: true,
                      controller: pwdController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white60,
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: "Enter Your Password",
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Can't be Empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen(data: main)),
                      );
                    });
                  },
                  child: const Text(
                    'log in',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
              },
              child: const Text(
                'Forgot your password?',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (store.currentState!.validate()) {
                  main.add([
                    nameController.text,
                    emailController.text,
                    pwdController.text,
                  ]);
                  setState(() {});
                  nameController.clear();
                  emailController.clear();
                  pwdController.clear();
                  showsnk(context);
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(
                      data: main,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  showsnk(context) {
    var snk = const SnackBar(
      content: Text('Thanks for signing up.'),
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snk);
  }
}
