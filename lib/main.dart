import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:get_it/get_it.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:timeago/timeago.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import './screens/splash_screen.dart';
import './services/navigation_services.dart';



void main() {
  runApp(Splash(key:UniqueKey(), onInitializationComplete: (){
    runApp(const TheApp());
  }));
}

class TheApp extends StatelessWidget {
  const TheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Colors.green),
      ),
     // navigatorKey: NavigationService.navigatorKey,
    );
  }
}













