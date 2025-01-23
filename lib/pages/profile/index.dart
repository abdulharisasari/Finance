import 'package:finance/routers/constants.dart';
import 'package:finance/service/asset.dart';
import 'package:finance/service/themes.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top:50.0,right: 20,left: 20),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, mainRoute, (route) => false);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(52.0),
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(person1)
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(primaryColor),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.edit, size: 16, color: Colors.white),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ],
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, loginRoute, (route) => false);
                      },
                        icon: const Icon(
                          Icons.logout,
                          size: 30.0,
                          color: Color(primaryColor),
                        ),
                      ),
                    )
                ],
              ),
              Center(child: Text("Abdul Haris As'ari",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 30),
              Text("Personal",style: TextStyle(fontSize: 20,color: Color(primaryColor),fontWeight: FontWeight.bold,),),
              ProfileCard(
                icon: Icons.copy,
                title: "Account Number ",
                subtitle: "**** **** **** ****",
              ),
              SizedBox(height: 10),
              ProfileCard(
                icon: Icons.arrow_forward_ios,
                title: "Phone Number",
                subtitle: "+62 8822 5236 570",
              ),
              SizedBox(height: 10),
              ProfileCard(
                icon: Icons.arrow_forward_ios,
                title: "Email Address",
                subtitle: "abdulharisasari@gmail.com",
              ),
              SizedBox(height: 20),
              Text("Verification",style: TextStyle(fontSize: 20,color: Color(primaryColor),fontWeight: FontWeight.bold,),),
              ProfileCard(
                icon: Icons.check_circle_outline_outlined,
                title: "KYC Verification",
                subtitle: "Identity Comfirmed",
              ),
              SizedBox(height: 20),
              Text("Security",style: TextStyle(fontSize: 20,color: Color(primaryColor),fontWeight: FontWeight.bold,),),
              ProfileCard(
                icon: Icons.arrow_forward_ios,
                title: "Transaction Pin",
                subtitle: "Change your transaction pin",
              ),
              SizedBox(height: 10),
              ProfileCard(
                icon: Icons.arrow_forward_ios,
                title: "Password",
                subtitle: "Change your login password",
              ),
            ],
          ),
        ),
      ),
    );
  }  
}



class ProfileCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ProfileCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0x19000000),
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(
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
                Container(
                  height: 30,
                  child: Icon(
                    icon,
                    size: 24,
                    color: Color(darkColor3), 
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
