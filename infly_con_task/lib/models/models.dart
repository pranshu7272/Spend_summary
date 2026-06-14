import 'package:flutter/material.dart';

class TransactionModel {
  final String id;
  final String title;
  final String subtitle;
  final double amount;
  final DateTime date;
  final String category;
  final String emoji;
  final bool isDebit;

  const TransactionModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.date,
    required this.category,
    required this.emoji,
    this.isDebit = true,
  });
}

class CategoryModel {
  final String name;
  final String emoji;
  final double amount;
  final double percentage;
  final Color color;
  final int transactionCount;

  const CategoryModel({
    required this.name,
    required this.emoji,
    required this.amount,
    required this.percentage,
    required this.color,
    required this.transactionCount,
  });
}
