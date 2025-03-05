import 'package:flutter/material.dart';

import 'ui/home/widgets/home_screen.dart';
import 'ui/league/widgets/league_screen.dart';
import 'ui/profile/widgets/profile_screen.dart';
import 'ui/setting/widgets/setting_screen.dart';
import 'ui/squad/widgets/squad_screen.dart';

Future<void> main() async {
  runApp(const FutebolaApp());
}

class FutebolaApp extends StatelessWidget {
  const FutebolaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const SquadScreen(),
      //routes: {
      //  'home': (context) => const HomeScreen(),
      //  'squad': (context) => const SquadScreen(),
      //  'league': (context) => const LeagueScreen(),
      //  'setting': (context) => const SettingScreen(),
      //  'profile': (context) => const ProfileScreen(),
      //},
      //initialRoute: 'home',
    );
  }
}
