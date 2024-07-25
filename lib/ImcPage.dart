import 'package:flutter/material.dart';

class Imcpage extends StatefulWidget {
  const Imcpage({super.key});

  @override
  State<Imcpage> createState() => _ImcpageState();
}

class _ImcpageState extends State<Imcpage> {
  late TextEditingController poidsController;
  late TextEditingController tailleController;
  late TextEditingController imc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calcul Page'),),
      body: ,
    );
  }
}
