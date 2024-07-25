import 'package:flutter/material.dart';
import 'package:flutter_application_2/FirstPage.dart';
import 'package:flutter_application_2/ImcPage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Calcul IMC',
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Imcpage(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text('A propos'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text('Exit'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
  //Loa@2638
}
