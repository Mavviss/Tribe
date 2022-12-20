
import 'dart:developer';

class User {
String id;
final String name;
final String gmail;
final String Password;
final String image ;

User({
  this.id='',
  required this.name,
  required this.gmail,
  required this.Password,
   this.image=''

});
Map<String, dynamic> toJson() => {
  'id':id,
  'name':name,
  'gmail':gmail,
  'Password':Password,
  'image':image

};
}