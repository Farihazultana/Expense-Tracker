import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.9,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Android Course',
        amount: 22.9,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'IOS Course',
        amount: 17.9,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Nepal Visit',
        amount: 115.9,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        title: 'Burger',
        amount: 20.0,
        date: DateTime.now(),
        category: Category.food),
  ];

  void _openAddExpensiveOverlay() {
    //...
    showModalBottomSheet(
        context: context, builder: (ctx) => const NewExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ExpenseTracker'),
        actions: [
          IconButton(
              onPressed: _openAddExpensiveOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(children: [
        const Text('The Chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses))
      ]),
    );
  }
}
