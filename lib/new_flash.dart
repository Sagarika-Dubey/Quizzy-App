import 'package:flutter/material.dart';

class NewFlash extends StatelessWidget {
  NewFlash({super.key, required this.addTx});
  final Function addTx;
  final flashController = TextEditingController();

  void submitData() {
    final flash = flashController.text;
    if (flash.isEmpty) {
      return;
    }
    addTx(flash);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter here!',
              ),
              controller: flashController,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
                onPressed: submitData,
                child: Text(
                  "Add Record",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color.fromARGB(255, 77, 76, 76)),
                ))
          ],
        ),
      ),
    );
  }
}
