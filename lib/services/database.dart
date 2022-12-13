import 'package:cloud_firestore/cloud_firestore.dart';


const String userCollection = "Users";
const String charCollection = "Chats";
const String messagesCollection= "Messages";


class DatabaseService{
  final FirebaseFirestore db = FirebaseFirestore.instance;
  DatabaseService(){}

}











