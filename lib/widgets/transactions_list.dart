import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New GPU', amount: 449.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New CPU', amount: 229.59, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: _userTransactions.map((tx) {
      return Card(
          elevation: 10,
          child: Row(
            children: <Widget>[
              Container(
                child: Text(
                  '\$ ${tx.amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      fontSize: 20),
                ),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 3)),
                padding: EdgeInsets.all(5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ));
    }).toList());
  }
}
