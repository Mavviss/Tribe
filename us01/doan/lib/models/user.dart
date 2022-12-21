import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {

String id;
final String name;
final String email;
final String Password;
final String image ;

User({
  this.id='',
  required this.name,
  required this.email,
  required this.Password,
   this.image=''

});
Map<String, Object?> toJson() => {
  'id':id,
  'name':name,
  'email':email,
  'Password':Password,
  'image':image

};
factory User.fromDoc(DocumentSnapshot doc) {
    return User(
      id: doc.id,
      name: doc['name'],
      email: doc['email'],
      Password: doc['password']
    );
  }
}
