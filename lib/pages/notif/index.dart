// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:finance/service/asset.dart';
import 'package:finance/service/themes.dart';
import 'package:flutter/material.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({super.key});

  @override
  State<NotifPage> createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Notification",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:  EdgeInsets.only(left: 20, right: 20,),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color:Color(darkColor3) )),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                    
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Color(0x19000000),blurRadius: 24,offset: Offset(0, 20))],
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                      child: Column(
                        children: [
                          TransactionCard(
                            imageAsset: transfer,
                            title: "Request Physical Card",
                            subtitle: "08.58 PM",
                          ),
                          const SizedBox(height: 20),
                          TransactionCard(
                            imageAsset: atm,
                            title: "Received money ",
                            subtitle: "08.58 PM",
                            highlightedText: "\$20",
                            received: "Dito",
                          ),
                          const SizedBox(height: 20),
                          TransactionCard(
                            imageAsset: transfer,
                            title: "Request Physical Card",
                            subtitle: "08.58 PM",
                          ),
                          const SizedBox(height: 20),
                          TransactionCard(
                            imageAsset: atm,
                            title: "Received money ",
                            subtitle: "08.58 PM",
                            highlightedText: "\$20",
                            received: "Johannes",
                            // line: false,
                          ),
                        ],
                      ),
                    ),
                  
                  ],
                ),
              ),
            SizedBox(height: 40),
            Text("Yesterday",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color:Color(darkColor3) )),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                    
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20,),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Color(0x19000000),blurRadius: 24,offset: Offset(0, 20))],
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                      child: Column(
                        children: [
                          TransactionCard(
                            imageAsset: transfer,
                            title: "Request Physical Card",
                            subtitle: "08.58 PM",
                          ),
                          const SizedBox(height: 20),
                          TransactionCard(
                            imageAsset: atm,
                            title: "Received money ",
                            subtitle: "08.58 PM",
                            highlightedText: "\$20",
                            received: "Dito",
                          ),
                          const SizedBox(height: 20),
                          TransactionCard(
                            imageAsset: transfer,
                            title: "Request Physical Card",
                            subtitle: "08.58 PM",
                          ),                          
                        ],
                      ),
                    ),
                  
                  ],
                ),
              )   

    
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;
  final String? highlightedText; 
  final Color? highlightedTextColor;
  final String? received;
  final bool? line;

  const TransactionCard({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    this.highlightedText,
    this.highlightedTextColor = Colors.green,
    this.received,
    this.line = true
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imageAsset),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      highlightedText != null
                          ? RichText(
                              overflow: TextOverflow.ellipsis, // Teks menjadi titik-titik jika panjang
                              text: TextSpan(
                                text: title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: highlightedText, 
                                    style: TextStyle(
                                      color: highlightedTextColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " From", 
                                  ),
                                  TextSpan(
                                    text: " $received", 
                                  ),
                                  
                                ],
                              ),
                            )
                          : Text(
                              title,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(darkColor3), 
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          if(line == true)
          Container(
            height: 1,
            width: double.infinity,
            color: const Color(lightColor3), 
          ),
        ],
      ),
    );
  }
}
