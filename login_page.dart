import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        decoration: const BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/cactu.jpg'),fit: BoxFit.cover)), 
        child: Padding (
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'esempio@gmail.com',
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 11, 102, 14)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 11, 102, 14))
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 11, 102, 14)))
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 11, 102, 14)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 11, 102, 14))
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 11, 102, 14)))
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 11, 102, 14))),
                  onPressed: () {
                    final String email = _emailController.text.trim();
                    final String password = _passwordController.text.trim();
                    if (email == 'admin@gmail.com' && password == 'password') {
                      setState(() {
                        _isLoggedIn = true;
                      });
                      Navigator.pushNamed(context, '/quarta');
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Errore di accesso'),
                          content: const Text('Email o password non valide.',style: TextStyle(color: Color.fromARGB(255, 87, 84, 84))),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/terza');
                              },
                              child: const Text('OK',style: TextStyle(color: Color.fromARGB(255, 11, 102, 14)),),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: const Text('Login'),
                  ),
                  const SizedBox(width: 20),
                  OutlinedButton(
                    style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 11, 102, 14))),
                    onPressed: () { Navigator.pushNamed(context, '/');}, 
                    child: const Text('Torna alla home'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
