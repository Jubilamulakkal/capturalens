import 'package:captura/collection/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Controller{
  // Instance of a firestore
   final db=FirebaseFirestore.instance;

  Future addUser(UserModel userModel,uid) async
  {
    // create collection
    final docRef=db.collection("user").doc(uid);
    //set or add values to collection
    docRef.set(userModel.data(docRef.id));
  }  

 // Fetch single user
  UserModel? singleUserData;
  Future fetchSingleUser(id) async
  {

    final snapshot = await db.collection("user").doc(id).get();
    singleUserData= UserModel.fromData(snapshot.data()!);
  }
}