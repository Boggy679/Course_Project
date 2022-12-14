import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});


  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }

}


class LoginScreenState extends State<LoginScreen>{
  late double devHeight;
  late double devWidth;

  @override
  Widget build(BuildContext context) {
    devHeight = MediaQuery.of(context).size.height;
    devWidth = MediaQuery.of(context).size.width;

    return LoginUI();
  }
  Widget LoginUI(){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: devWidth * 0.03,
            vertical: devHeight * 0.02),
        height:devHeight * 0.98,
        width: devWidth * 0.97,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            title(),
          ],

        ),
      ),
    );
  }
  Widget title(){
    return SizedBox(height: devHeight * 0.1,
        child: const Text('WhatsUp?',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold
        ) ));
  }
}


