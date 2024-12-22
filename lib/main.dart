import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'screens/login_screen.dart';
import 'screens/user_details_screen.dart';


void main() async {
  await dotenv.load(fileName: ".env");

  runApp(SwiftyCompanionApp());
}

class SwiftyCompanionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swifty Companion',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/userDetails': (context) => UserDetailsScreen(),
      },
    );
  }
}
