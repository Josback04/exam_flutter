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
  late final double imcTotal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    poidsController = TextEditingController();
    tailleController = TextEditingController();
    imc = TextEditingController();
    imcTotal = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcul Page'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Poids',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            TextField(
              obscureText: false,
              keyboardType: TextInputType.number,
              controller: poidsController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Taille',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            TextField(
              obscureText: false,
              keyboardType: TextInputType.number,
              controller: tailleController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'IMC',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Text('$imcTotal'),
            ),
            // TextField(
            //   readOnly: true,
            //   keyboardType: TextInputType.text,
            //   controller: imc,
            //   decoration: const InputDecoration(
            //     border: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.blue)),
            //   ),
            // ),
            const SizedBox(
              height: 75,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('REPRENDRE'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    imcTotal = _imc(double.parse(poidsController.value.text),
                        double.parse(tailleController.value.text));

                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('CALCULER'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  double _imc(double t, double p) {
    return p / t * t;
  }
}
