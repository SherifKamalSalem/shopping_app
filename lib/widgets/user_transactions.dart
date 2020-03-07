import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/new_transaction.dart';
import 'package:shopping_app/widgets/transaction_list.dart';
import 'package:shopping_app/models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: "t1", title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "t2", title: 'New Jaket', amount: 639.99, date: DateTime.now()),
    Transaction(
        id: "t3", title: 'New Jeans', amount: 169.99, date: DateTime.now()),
    Transaction(
        id: "t4", title: 'New Coat', amount: 269.99, date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTransaction = Transaction(title: title, amount: amount, date: DateTime.now(), id: DateTime.now().toString());
    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction), TransactionList(_userTransactions)],
    );
  }
}
