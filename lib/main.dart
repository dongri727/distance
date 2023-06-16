import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'bloc_provider.dart';
import 'distance/distance.dart';
import 'menu/menu.dart';

/// The app is wrapped by a [BlocProvider]. This allows the child widgets
/// to access other components throughout the hierarchy without the need
/// to pass those references around.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return BlocProvider(
      platform: Theme.of(context).platform,
      t: Distance(Theme.of(context).platform),
      child: MaterialApp(
        title: 'Distance',
        theme: ThemeData(
           useMaterial3: true),
        home: const MenuPage(),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: null, body: MainMenuWidget());
  }
}

void main() => runApp(const MyApp());
