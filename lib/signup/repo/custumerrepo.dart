import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class CustomerRepo{
  Future<void>createCustomer(String name,String email,String password,BuildContext context)
  async{
    final _auth=FirebaseAuth.instance;
    final CollectionReference customerRef= FirebaseFirestore.instance.collection("Customer Collection");
    try {
      final UserCredential=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await customerRef.doc(UserCredential.user!.uid).set(
        {
          "userid":_auth.currentUser!.uid,
          "name":name,
          "email":email,
          "password":password,
        });
    } 
    on FirebaseAuthException
    catch (e) {
      throw Exception("Signup Failed");
      
    }
  
  }
}