import 'package:doan/models/user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Database {

static void updateUserData(User user) {
    FirebaseFirestore.instance.collection('users').doc(user.id).update({
      'name': user.name,
      'gmail': user.gmail,
      'password': user.Password,     
    });
  }







}