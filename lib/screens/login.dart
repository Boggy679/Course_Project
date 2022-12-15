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
            SizedBox(height: devHeight * 0.2),
            const CreateAccount(name: "Create Account"),
            SizedBox(height: devHeight * 0.01),
            LoginButton(onPressed: (){}, height: 50, width: 300),


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
        height: devHeight * 0.16,
        child: Form(
          key: loginKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              EmailEntry(onSaved: (value){}, regEx: r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+" , hintText: "Email"),
              PasswordEntry(onSaved: (value){}, regEx: r".{8,}", hintText: "Password", obscureText: true),
            ],
          ),
        )
    );
  }
}

// creating the email entry characteristics
class EmailEntry extends StatelessWidget {
  final Function(String) onSaved;
  final String regEx;
  final String hintText;

  const EmailEntry({
    super.key,
    required this.onSaved,
    required this.regEx,
    required this.hintText,

  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) => onSaved(value!),
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.white),
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

// creating the password entry characteristics
class PasswordEntry extends StatelessWidget {
  final Function(String) onSaved;
  final String regEx;
  final String hintText;
  final bool obscureText;

  const PasswordEntry({
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
        cursorColor: Colors.black,
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


//creating the LoginButton characteristics
class LoginButton extends StatelessWidget{
  final double height;
  final double width;
  final Function onPressed;

  const LoginButton({
    super.key,
    required this.onPressed,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height,
      width: width,
      child: ElevatedButton(
        onPressed: (){},
        child: const Text("Login",
            style: TextStyle(fontSize: 25,
              color: Colors.white,
              height:1.5,)
        )
      )
    );
  }
}

// creating a create account button
class CreateAccount extends StatelessWidget{
  final String name;

  const CreateAccount({
    super.key,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
        child: TextButton(
            style: TextButton.styleFrom(textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
              primary: Colors.white,
            ),
            onPressed: () {},
            child: Text(name)));
  }}

