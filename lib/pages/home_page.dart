// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/util/my_buttons.dart';
import 'package:wallet_app/util/my_card.dart';
import 'package:wallet_app/util/my_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Container(
          height: 80,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.pink[500],
            ),
            Icon(
              Icons.close,
              size: 30,
            ),
          ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          // appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'My ',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Cards',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[400],
                    ),
                    child: Icon(
                      Icons.add,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // cards
          Container(
            height: 200,
            child: PageView(controller: _controller, children: [
              MyCard(
                  balance: 3045,
                  color: Colors.deepPurple,
                  creditCard: 41610,
                  expireYear: 27,
                  expiremonth: 10),
              MyCard(
                  balance: 2135,
                  color: Colors.green,
                  creditCard: 30452,
                  expireYear: 20,
                  expiremonth: 5),
              MyCard(
                  balance: 3922,
                  color: Colors.blue,
                  creditCard: 10235,
                  expireYear: 29,
                  expiremonth: 5),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          SmoothPageIndicator(
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              controller: _controller,
              count: 3),

          // buttons ,pay,bill,send
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // send
                MyButtons(
                  iconBath: 'assets/images/send-money.png',
                  text: 'Send',
                ),
                // pay,
                MyButtons(
                  iconBath: 'assets/images/credit-card.png',
                  text: 'Pay',
                ),
                // bill
                MyButtons(
                  iconBath: 'assets/images/bill.png',
                  text: 'Bill',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                MyList(
                    iconPath: 'assets/images/analysis.png',
                    title: 'Statistics',
                    subTitle: 'Payment and Income'),
                MyList(
                    iconPath: 'assets/images/transaction.png',
                    title: 'Transaction',
                    subTitle: 'Transaction History'),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
