class CryptoTransaction {
  final String cryptoName;
  final DateTime transactionDate;
  final double transactionAmount;
  final double transactionAmountInUSD;
  final bool isSale;

  const CryptoTransaction({
    required this.cryptoName,
    required this.transactionDate,
    required this.transactionAmount,
    required this.transactionAmountInUSD,
    required this.isSale,
  });
}
