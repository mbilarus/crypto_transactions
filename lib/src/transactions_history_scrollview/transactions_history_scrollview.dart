import 'package:crypto_listview/src/models.dart';
import 'package:flutter/material.dart';
import 'section_widget.dart';

class TransactionsHistoryScrollView extends StatelessWidget {
  final List<CryptoTransactionSection> sections;
  const TransactionsHistoryScrollView({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: buildTransactions(transactions: sections),
    );
  }

  List<Widget> buildTransactions(
          {required List<CryptoTransactionSection> transactions}) =>
      transactions
          .map<Widget>((transactionsSection) => CryptoTransactionsSectionWidget(
              section: transactionsSection,
              transactions: transactionsSection.transactions))
          .toList();
}
