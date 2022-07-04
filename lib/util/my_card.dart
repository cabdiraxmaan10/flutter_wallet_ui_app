import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double? balance;
  final int? creditCard;
  final int? expiremonth;
  final int? expireYear;
  final color;
  MyCard(
      {required this.balance,
      required this.creditCard,
      required this.expireYear,
      required this.expiremonth,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Balance',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '\$ ' + balance.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${creditCard}',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '${expiremonth} /${expireYear}',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
