import 'package:crypto_listview/src/mock/crypto_transaction_sections.dart';
import 'package:crypto_listview/src/transactions_history_scrollview/transactions_history_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:crypto_listview/custom_icons.dart';

void main() {
  runApp(const TransactionHistoryApp());
}

class TransactionHistoryApp extends StatelessWidget {
  const TransactionHistoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(children: [
            const TransactionHistoryHeader(),
            Expanded(
              child: TransactionsHistoryScrollView(
                sections: cryptoTransactionSections,
              ),
            )
          ]),
        ));
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 53.0, 16.0, 14.0),
        child: Column(
          children: [
            Row(children: const [
              Icon(
                CustomIcons.pop_arrow,
                size: 16.0,
                color: Colors.white,
              ),
              SizedBox(width: 20.0),
              Text(
                'Transaction History',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              )
            ]),
            const SizedBox(
              height: 12.5,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.23)),
                  borderRadius: BorderRadius.circular(12.0)),
              child: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 11.0, 16.0, 12.0),
                  child: DropdownButton(
                    icon: Column(children: [
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(children: const [
                        Icon(
                          CustomIcons.arrow_bottom,
                          size: 8.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8.0,
                        )
                      ])
                    ]),
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(
                        value: 'Crypto',
                        child: Text(
                          'Crypto',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.w400,
                            fontSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                    onChanged: (value) {},
                    value: 'Crypto',
                    dropdownColor: black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Row(
              children: [
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.white.withOpacity(0.23)),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 3.0, 16.0, 4.0),
                        child: DropdownButton(
                          icon: Column(children: [
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(children: const [
                              Icon(
                                CustomIcons.arrow_bottom,
                                size: 6.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8.0,
                              )
                            ])
                          ]),
                          isExpanded: true,
                          items: const [
                            DropdownMenuItem(
                              value: 'Crypto Sells',
                              child: Text(
                                'Crypto Sells',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                          onChanged: (value) {},
                          value: 'Crypto Sells',
                          dropdownColor: black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 11.0,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(0.23)),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: SizedBox(
                    width: 54.0,
                    height: 54.0,
                    child: IconButton(
                      iconSize: 20.0,
                      icon: const Icon(
                        CustomIcons.calendar,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

const black = Color(0xFF18181C);
