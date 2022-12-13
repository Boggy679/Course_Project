import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../services/navigation_services.dart';
import 'package:get_it/get_it.dart';
import '../services/media_services.dart';
import '../services/cloud_storage_service.dart';
import '../services/database.dart';



class Splash extends StatefulWidget {
  final VoidCallback onInitializationComplete;


  const Splash(
      {required Key key, required this.onInitializationComplete,})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }

}

class SplashState extends State<Splash>{
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((_){
      setup().then((_) => widget.onInitializationComplete(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
    ),
    home: Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('lib/assets/chatpic.png'),
            ),
          ),
        ),
      ),
    ),
  );
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  registerServices();
}

void registerServices(){
    GetIt.instance.registerSingleton<NavigationService>(NavigationService());
    GetIt.instance.registerSingleton<MediaService>(MediaService());
    GetIt.instance.registerSingleton<CloudStorageService>(CloudStorageService());
    GetIt.instance.registerSingleton<DatabaseService>(DatabaseService());
}
}


























