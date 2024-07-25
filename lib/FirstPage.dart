import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
      child: Column(children: [
        const SizedBox(
          height: 100,
        ),

        // AssetImage()
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/imc_logo.jpg'),
          radius: 50,
        ),

        const SizedBox(
          height: 50,
        ),

        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstPage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('ENTRER',
                style: TextStyle(
                  fontSize: 16,
                )))
      ]),
    )));
  }
}
