import 'package:flutter/material.dart';
import 'package:regitration_prototype/sunmi.dart';

class SunmiScreen extends StatefulWidget {
  const SunmiScreen({super.key});

  @override
  State<SunmiScreen> createState() => _SunmiScreenState();
}

class _SunmiScreenState extends State<SunmiScreen> {
//to get the user input

  final qrInputController = TextEditingController();

  String qrcodedata = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sunmi Print Demo'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                controller: qrInputController,
                decoration: InputDecoration(
                  hintText: "Qr column",
                  labelText: "qr code",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Sunmi printer = Sunmi(qrInputController.text.toString());
                printer.printReceipt();
              },
              child: const Text('Print'),
            ),
          ],
        ),
      ),
    );
  }
}
