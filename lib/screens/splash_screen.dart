import 'package:flutter/material.dart';



class Splash extends StatefulWidget {
  final VoidCallback onInitializationComplete;


  const Splash(
      {required Key key, required this.onInitializationComplete,}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }

}

class _SplashState extends State<Splash>{
  @override
  void initState() {
    super.initState();
  }


@override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'WhatsUp?',
      theme: ThemeData(
        backgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
        scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
      ),
      home: Scaffold(
        body: Center(
            child:Container(
                height:200,
                width:200,
                decoration:const BoxDecoration(
                  image:DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('lib/assets/chatpic.png'),
                  ),
                ),
            ),
        ),
      )
    );
  }
}























