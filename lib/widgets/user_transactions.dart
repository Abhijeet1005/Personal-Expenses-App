import 'package:flutter/material.dart';
import './new_transactions.dart';
import './transactions_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key key}) : super(key: key);

  @override
  State<UserTransactions> createState() => UuserTransactionsState();
}

class UuserTransactionsState extends State<UserTransactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
