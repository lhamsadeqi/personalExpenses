// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './widget/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // String? titleInput;
  // String? amountInput;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Personal Expenses'),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.grey[300],
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Card(
                    color: Colors.teal,
                    child: Center(
                      child: Text(
                        'Personal Expenses',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                UserTransaction(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
