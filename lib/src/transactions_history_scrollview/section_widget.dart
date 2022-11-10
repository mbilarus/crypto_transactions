import 'package:crypto_listview/src/models.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'card_background_widget.dart';
import 'card_header_widget.dart';
import 'transaction_tile_widget.dart';

class CryptoTransactionsSectionWidget extends StatelessWidget {
  final CryptoTransactionSection section;
  final List<CryptoTransaction> transactions;
  const CryptoTransactionsSectionWidget(
      {super.key, required this.section, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(0),
      sliver: MultiSliver(
        pushPinnedChildren: true,
        children: [
          SliverStack(
            insetOnOverlap: true,
            children: const [
              SliverPositioned.fill(
                child: CardBackgroundWidget(),
              ),
            ],
          ),
          buildCard(context),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context) => MultiSliver(
        children: <Widget>[
          SliverPinnedHeader(child: CardHeaderWidget(title: section.title)),
          SliverClip(
            child: MultiSliver(
              children: <Widget>[
                buildTransactions(),
              ],
            ),
          ),
        ],
      );

  Widget buildTransactions() => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) =>
              TransactionTileWidget(transaction: transactions[index]),
          childCount: transactions.length,
        ),
      );
}
