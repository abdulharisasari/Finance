

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finance/main/index.dart';
import 'package:finance/pages/history/index.dart';
import 'package:finance/routers/constants.dart';
import 'package:finance/service/asset.dart';
import 'package:finance/service/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back,",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Haris",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, notifRoute);
                        },
                        child: Image.asset(
                          homeNotifActif,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context, profileRoute, (route) => false);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(52.0),
                            ),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(person1)                        
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(homeCard),
                  fit: BoxFit.cover,
                )),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        "Balance",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Today, 08 Sept 2019",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        '\$6,420.00 ',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "up by 2% from last month",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width(context),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              homeTransfer,
                              height:60,
                              width:60,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Transfer",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              homeBill,
                              height:60,
                              width:60,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Bill",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              homeVoucher,
                              height:60,
                              width:60,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Voucher",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              homeSend,
                              height:60,
                              width:60,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Send",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              homeMore,
                              height:60,
                              width:60,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "More",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Send Money",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(primaryColor)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileWidget(
                          imageUrl: person2,
                          name: "Johannes",
                          points: "\$100.00",
                        ),
                        ProfileWidget(
                          imageUrl: person2,
                          name: "Johannes",
                          points: "\$100.00",
                        ),
                        ProfileWidget(
                          imageUrl: person2,
                          name: "Johannes",
                          points: "\$100.00",
                        ),
                        ProfileWidget(
                          imageUrl: person2,
                          name: "Johannes",
                          points: "\$100.00",
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(primaryColor)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 150,
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
                              imagePath: youtube,
                              title: 'Youtube Ads',
                              subtitle: 'Income',
                              amount: '+ \$32.00',
                              date: '10 Sept 2019',
                              amountColor: Colors.green,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InOut(
                              imagePath: youtube,
                              title: 'Youtube Ads',
                              subtitle: 'Income',
                              amount: '+ \$32.00',
                              date: '10 Sept 2019',
                              amountColor: Colors.green,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InOut(
                              imagePath: youtube,
                              title: 'Youtube Ads',
                              subtitle: 'Income',
                              amount: '+ \$32.00',
                              date: '10 Sept 2019',
                              amountColor: Colors.green,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InOut(
                              imagePath: youtube,
                              title: 'Youtube Ads',
                              subtitle: 'Income',
                              amount: '+ \$32.00',
                              date: '10 Sept 2019',
                              amountColor: Colors.green,
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

class ProfileWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String points;

  ProfileWidget({
    required this.imageUrl,
    required this.name,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Color(secondaryColor),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -20,
              left: 15,
              right: 15,
              child: ClipOval(
                child: Image.asset(
                  imageUrl,
                  height: 40.0,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: Column(
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(primaryColor),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        points,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(primaryColor),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
