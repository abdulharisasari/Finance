import 'package:finance/main.dart';
import 'package:finance/main/index.dart';
import 'package:finance/pages/auth/signIn/index.dart';
import 'package:finance/pages/history/index.dart';
import 'package:finance/pages/home/index.dart';
import 'package:finance/pages/notif/index.dart';
import 'package:finance/pages/wallet/index.dart';
import 'package:finance/main/root.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    print("Navigating to: ${settings.name}");
    switch (settings.name){

      case rootRoute:
        return MaterialPageRoute(
          builder: (_) => Root());
      case mainRoute:
        return MaterialPageRoute(
          builder: (_) => MainPage());
      case homeRoute:
        return MaterialPageRoute( 
          builder: (_) => HomePage());
      case historyRoute:
        return MaterialPageRoute( 
          builder: (_) => HistoryPage());
      case walletRoute:
        return MaterialPageRoute( 
          builder: (_) => WalletPage());
      case notifRoute:
        return MaterialPageRoute( 
          builder: (_) => NotifPage());
      case loginRoute:
        return MaterialPageRoute(
          builder: (_)=> SignInPage());


      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('404: Page not found')),
          ),
        );

    }
  }
}

