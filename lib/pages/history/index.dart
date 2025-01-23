// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finance/service/asset.dart';
import 'package:finance/service/themes.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 258,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(historyBackg),
                  fit: BoxFit.cover,
                )),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "In & Out",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.search_outlined,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Active Total Balance",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$6,420.00 ',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(8))),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 32,
                                color: Colors.white,
                              ),
                            )
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(lightColor2).withOpacity(0.2),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(8))),
                              child: Icon(
                                Icons.arrow_upward,
                                size: 18,
                                color: Colors.white,
                              )),
                          SizedBox(width: 10),
                          Text(
                            "Up by 4% from last month",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Expenses",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(primaryColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Earnings",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(primaryColor),
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Sort by",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(primaryColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                                child: Icon(
                              Icons.arrow_drop_down,
                              size: 25,
                              color: Color(primaryColor),
                            )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 400,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 20),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: SingleChildScrollView(
                        controller: ScrollController(),
                        child: Column(
                          children: [
                            InOut(
                              imagePath:drowbox,
                              title: 'Dropbox Plan',
                              subtitle: 'Subscription',
                              amount: '+ \$32.00',
                              date: '10 Sept 2019',
                              amountColor: Colors.green,
                            ),
                            SizedBox(height: 20),
                            InOut(
                              imagePath:music,
                              title: 'Spotify Subscr',
                              subtitle: 'Subscription',
                              amount: '+ \$32.00',
                              date: '10 Sept 2019',
                              amountColor: Colors.green,
                            ),
                            SizedBox(height: 20),
                            InOut(
                              imagePath: atm,
                              title: 'Atm Widraw',
                              subtitle: 'Subscription',
                              amount: '- \$32.00',
                              date: '10 Sept 2019',
                              amountColor: Colors.red,
                            ),
                            SizedBox(height: 20),
                            InOut(
                              imagePath: food,
                              title: 'KFC Retaurant',
                              subtitle: 'food & Drink',
                              amount: '- \$32.00',
                              date: '10 Sept 2019',
                              amountColor: Colors.red,
                            ),
                            SizedBox(height: 20),
                            InOut(
                              imagePath: tax,
                              title: 'Tax on Interest',
                              subtitle: 'Tax & Bill',
                              amount: '- \$32.00',
                              date: '10 Sept 2019',
                              amountColor: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  Widget InOut({
    required String imagePath,
    required String title,
    required String subtitle,
    required String amount,
    required String date,
    Color? amountColor,
  }) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: amountColor ?? Colors.green,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 1,
            width: double.infinity,
            color: Color(0xFFEFEFEF),
          ),
        ],
      ),
    );
  }

