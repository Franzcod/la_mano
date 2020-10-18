

class User {
  final String userId;
  final String email;

  User({this.email, this.userId});

  Map<String, dynamic> toMap(){
    return {
      'userId': userId,
      'enail': email,
    };
  }


  User.fromFirestore(Map<String, dynamic> firestore)
    : userId = firestore['userId'],
      email = firestore['email'];




}