import 'package:cloud_firestore/cloud_firestore.dart';

import '../object/user_object.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class userProvider {
  // lấy danh sách email trong firestore
  static Future<List<user>> get(String email) async {
    List<user> thongtin = [];
    final snapshot = await FirebaseFirestore.instance
        .collection('user')
        .where('email', isEqualTo: email)
        .get();
    thongtin = snapshot.docs
        .map((json) => user.fromJson(json.data() as Map<String, dynamic>))
        .toList();

    return thongtin;
  }
  static Future<List<user>> getEmail() async {
    List<user> thongtin = [];
    final snapshot = await FirebaseFirestore.instance.collection('user').get();

    thongtin = snapshot.docs
        .map((json) => user.fromJson(json.data() as Map<String, dynamic>))
        .toList();
    return thongtin;
  }
}
