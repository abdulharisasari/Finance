

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finance/routers/constants.dart';
import 'package:finance/service/asset.dart';
import 'package:finance/service/themes.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
   final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Card",
                    style: TextStyle(fontSize: 22, color: Color(primaryColor), fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("Add New", style: TextStyle(fontSize: 14, color: Color(primaryColor), fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      Icon(
                        Icons.add_box,
                        size: 24.0,
                        color: Color(primaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index) {
                  return Row(
                    children: [
                      WalletCard(
                        imagePath: wallteCard,
                        balance: '**** **** **** 2458',
                        exp: '07/40',
                        name: "Abdul Haris As'ari",
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 66,
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, right: 20, top: 20,bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Color(0x19000000),blurRadius: 24,offset: Offset(0, 20))],
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Transactions",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                    Container(
                      child: Icon(Icons.arrow_forward_ios,size: 24.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text("Quict Action",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(primaryColor)),),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, right: 20, top: 20,bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Color(0x19000000),blurRadius: 24,offset: Offset(0, 20))],
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Request Physical Card",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                              Container(
                                child: Icon(Icons.arrow_forward_ios,size: 24.0),
                              ),
                            ],
                          ),
                        SizedBox(height: 20),
                        Container(height: 1,width: double.infinity,color: Color(lightColor3),),
                        ],
                      ),
                    ),                    
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Show Card Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                              Container(child: Image.asset(swichtLeft,fit: BoxFit.contain))
                            ],
                          ),
                        SizedBox(height: 20),
                        Container(height: 1,width: double.infinity,color: Color(lightColor3),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Freeze Card",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                              Container(child: Image.asset(swichtRight,fit: BoxFit.contain))
                            ],
                          ),
                        SizedBox(height: 20),
                        Container(height: 1,width: double.infinity,color: Color(lightColor3),),
                        ],
                      ),
                    ),
                 
                  ],
                ),
              ),
            ],
          ),
        )         
     
      ],
    ));
  }
}

class WalletCard extends StatelessWidget {
  final String imagePath;
  final String balance;
  final String name;
  final String exp;

  const WalletCard({
    Key? key,
    required this.imagePath,
    required this.balance,
    required this.name,
    required this.exp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(16), 
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Finaci",style: TextStyle(fontSize: 16,color: Colors.white)),
                Image.asset(vissa,fit: BoxFit.fill),
              ],
            ),
            SizedBox(height: 15),
            Text(balance, style: TextStyle(fontSize: 27,color: Colors.white)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Card Horder More",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w100)),
                    SizedBox(height: 5),
                    Text(name,style: TextStyle(fontSize: 11,color: Colors.white,fontWeight: FontWeight.w600)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Expire Date",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w100)),
                    SizedBox(height: 5),
                    Text(exp,style: TextStyle(fontSize: 11,color: Colors.white,fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
