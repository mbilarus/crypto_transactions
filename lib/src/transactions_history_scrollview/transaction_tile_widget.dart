import 'package:crypto_listview/src/models.dart';
import 'package:flutter/material.dart';

class TransactionTileWidget extends StatelessWidget {
  final CryptoTransaction transaction;
  const TransactionTileWidget({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
            shape: Border(
              bottom: BorderSide(color: Colors.grey[300]!, width: 1),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 17.75, vertical: 22.75)
                    .copyWith(bottom: 14.0),
            title: Column(
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 28.5,
                            height: 28.5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: transaction.isSale
                                    ? const Color(0xFFFF07EC)
                                    : const Color(0xFF00C41E),
                              ),
                            ),
                            child: Center(
                                child: transaction.isSale
                                    ? const Icon(
                                        Icons.remove,
                                        color: Color(0xFFFF07EC),
                                      )
                                    : const Icon(Icons.add,
                                        color: Color(0xFF00C41E))),
                          ),
                          const SizedBox(width: 10.75),
                          Text(
                            transaction.isSale ? 'SALE' : 'BUY',
                            style: const TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 9.0),
                          Text(
                            transaction.cryptoName,
                            style: const TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      Text(
                        '${transaction.isSale ? '-' : '+'} ${transaction.transactionAmount} ${transaction.cryptoName}',
                        style: const TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ]),
                const SizedBox(
                  height: 7.75,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 39.25),
                      child: Text(
                        '${transaction.transactionDate.month}/${transaction.transactionDate.day}/${transaction.transactionDate.year}',
                        style: const TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      '${transaction.isSale ? '-' : '+'} ${transaction.transactionAmountInUSD} USD',
                      style: const TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
