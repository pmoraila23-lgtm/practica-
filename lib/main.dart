import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'boton_login.dart'; 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BotonPersonalizado(
                texto: 'Click Me',
                onPressed: null,
              ),
              SizedBox(height: 20), 
              LoginButton(
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BotonPersonalizado extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;

  const BotonPersonalizado({
    super.key,
    required this.texto,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF3333FF),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000),
              offset: const Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
