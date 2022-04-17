import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:med_app/services/firebase_au.dart';

class FirebaseDB {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  FirebaseDB(this._firestore,this._auth);

  Future<String> register({
    required String email, required String password, required bool isDoctor, String? medicalId, List<String>? allergyList, required String name, required String surname,}) async{
    try {
      UserCredential _usercredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = _usercredential.user!;
    await _firestore
          .collection('Users')
          .doc(user.email)
          .set({"Name": name,"Surname": surname,"isDoctor": isDoctor,"MedicalID": medicalId,"MedList": allergyList})
          .then((value) => print('User Created : ${user.email}'))
          .catchError((e) => print('Database Error!'));
    return 'Sign Up Successful';
    }
    on FirebaseAuthException catch (e){
      if (e.code == 'weak-password') {
        return 'The password is too weak';
      }
      if (e.code == 'email-already-in-use') {
        return 'The account already exists for this email';
      }
      return 'Database Error Occured!';
    } catch (e) {
      return 'Error Occured!';
    }
  }
}
