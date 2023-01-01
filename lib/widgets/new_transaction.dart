import 'dart:ffi';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleContoller = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);
  void submitData() {
    final enterdTitle = titleContoller.text;
    final enterdAmount = double.parse(amountController.text);
    if (enterdTitle.isEmpty || enterdAmount <= 0) {
      return;
    }
    addTx(
      enterdTitle,
      enterdAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleContoller,
              onSubmitted: (_) => submitData,
              // onChanged: (value) {
              // titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
              //onChanged: (value) {
              //  amountInput = value;
              //  },
            ),
            TextButton(
              onPressed: submitData,
              // print(titleInput);
              // print(amountInput);

              child: Text('TextButton'),
            )
          ],
        ),
      ),
    );
  }
}
