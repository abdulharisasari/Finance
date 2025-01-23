// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finance/routers/constants.dart';
import 'package:finance/service/asset.dart';
import 'package:finance/service/themes.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isObscure = true; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:  EdgeInsets.all(15.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Welcome back! Glad \nto see you, Again!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(primaryColor)),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(logoFinance,height: 53,width: 53,fit: BoxFit.cover,),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      color: Color(lightColor3).withOpacity(0.4),
                      margin: const EdgeInsets.only(),
                      child: TextFormField(
                        initialValue: '',
                        decoration: const InputDecoration(
                          labelText: 'Enter Your email',
                          labelStyle: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.w100,),                          
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(primaryColor)
                            ),
                          )                                            
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      color: const Color(lightColor3).withOpacity(0.4), 
                      child: TextFormField(
                        obscureText: _isObscure, 
                        decoration: InputDecoration(
                          labelText: 'Enter Your Password',
                          labelStyle: const TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                          ),
                          border: const OutlineInputBorder(),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(primaryColor), 
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off, 
                              color: Colors.blueGrey,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure; 
                              });
                            },
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                    ), 
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forgot Password?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(darkColor2)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                    SizedBox(
                      width: double.infinity, 
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(primaryColor),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 20), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), 
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, mainRoute, (route) => false);
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,), 
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 1,width: 120,color: Color(darkColor4),),
                          Text("Or Login With",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(darkColor2)
                            ),
                          ),
                          Container(height: 1,width: 120,color: Color(darkColor4),),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(icFb),
                        Image.asset(icGoogle),
                        Image.asset(icApples),
                      ],
                    ),
                    SizedBox(height: 130),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have an account? ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(primaryColor)
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text("Register Now",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(primaryColor),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),


      
                  ],
                )),
            ],
          ),
        ),
      ),
    );
  }
}