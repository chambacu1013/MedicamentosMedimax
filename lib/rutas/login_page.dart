import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/img/saludo.jpeg",
            width: 200,
            color: Theme.of(context).colorScheme.primary,
            placeholderBuilder: (_) => const CircularProgressIndicator(),
          ),
          const Image(
            image: AssetImage("assets/img/logos.jpeg"),
          ),
          Text(
            "Mi Diario",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: const Text("Iniciar Sesión"),
            ),
          ),
        ],
      ),
    );
  }
}
