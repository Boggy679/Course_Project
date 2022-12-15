import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import '../services/database.dart';
import '../services/navigation_services.dart';



class Authentication extends ChangeNotifier{
  late final FirebaseAuth auth;
  late final NavigationService navigationService;
  late final DatabaseService databaseService;


  Authentication(){
    auth = FirebaseAuth.instance;
    navigationService = GetIt.instance.get<NavigationService>();
    databaseService = GetIt.instance.get<DatabaseService>();



  }


}