import 'package:flutter/material.dart';
import 'package:namaste/loginScreen.dart';
import 'package:namaste/pages/leaderboard.dart';
import 'package:namaste/pages/my_account.dart';
import 'package:namaste/pages/security.dart';
import 'package:namaste/pages/start_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:namaste/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'splashScreen.dart';

final navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserProvider()),
        ],
        child: MaterialApp(
          title: 'Namaste',
          navigatorKey: navigatorKey,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LeaderBoard(),
            '/start': (context) => StartPage(),
            '/my_profile': (context) => MyProfile(),
            '/security': (context) => Security(),
          },
        ));
  }
}
