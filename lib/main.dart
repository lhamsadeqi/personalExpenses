// ignore_for_file: prefer_const_literals_to_create_immutables , use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: '0',
      title: 'new shoe',
      amount: 450.55,
      date: DateTime.now(),
    ),
    Transaction(
      id: '1',
      title: 'new book',
      amount: 198.5,
      date: DateTime.now(),
    ),
  ];

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
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 40,
              child: Card(
                color: Colors.blue,
                child: Center(
                  child: Text('Personal Expenses'),
                ),
              ),
            ),
            Column(
                children: transactions.map((tx) {
              return Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        width: 75,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '\$ ${tx.amount}',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateFormat.yMMMd().format(tx.date),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList()),
          ],
        ),
      ),
    );
  }
}
