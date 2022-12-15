

class User{
  final String uid;
  final String email;
  final String name;

  User({
    required this.uid,
    required this.email,
    required this.name,

  });

  factory User.fromJSON(Map<String,dynamic>json){
    return User(uid: json["uid"], email: json["email"], name: json["name"]);
  }

  Map<String,dynamic> toMap(){
    return{"email":email, "name":name};
  }
}


