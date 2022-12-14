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
  final loginKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    devHeight = MediaQuery.of(context).size.height;
    devWidth = MediaQuery.of(context).size.width;

    return loginUI();
  }
  Widget loginUI(){
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
            loginForm(),
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
          fontSize: 35,
          fontWeight: FontWeight.bold
        )));
  }
  Widget loginForm(){
    return SizedBox(
        height: devHeight * 0.18,
        child: Form(
          key: loginKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoginFields(onSaved: (value){}, regEx: r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+" , hintText: "Email" , obscureText: false),
              //LoginFields(onSaved:, regEx: , hintText: "Password", obscureText: true ),
            ],
          ),
        )
    );
  }
}

class LoginFields extends StatelessWidget {
  final Function(String) onSaved;
  final String regEx;
  final String hintText;
  final bool obscureText;

  const LoginFields({
    super.key,
    required this.onSaved,
    required this.regEx,
    required this.hintText,
    required this.obscureText,

  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) => onSaved(value!),
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
      validator: (value){
        return RegExp(regEx).hasMatch(value!)?null:'Enter again';
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
    ),
        hintText: hintText,
        hintStyle: const TextStyle(color:Colors.white),



      )
    );
  }}




