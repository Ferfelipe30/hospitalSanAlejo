import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hospitalsanalejo/authentication/auth_service.dart';

// ignore: camel_case_types
class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => inicioPage();
}

// ignore: camel_case_types
class inicioPage extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(148, 182, 230, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                logoApp(),
                SizedBox(
                  height: 16,
                ),
                botonIniciarGoogle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class logoApp extends StatelessWidget {
  const logoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/imagen/Logo Hospital SAN ALEJO.webp',
        fit: BoxFit.contain,
      ),
    );
  }
}

// ignore: camel_case_types
class botonIniciarGoogle extends StatelessWidget {
  const botonIniciarGoogle({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        User? user = await AuthService().signInWithGoogle();
        if (user != null) {
          // ignore: avoid_print
          print('Signed in as ${user.displayName}');
        }
      },
      child: const Text('Iniciar Seccion con Google'),
    );
  }
}
