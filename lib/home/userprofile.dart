
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class userprofile extends StatefulWidget {
  const userprofile({super.key});

  @override
  State<userprofile> createState() => _userprofileState();
}
File? selectedImage;
File? selectedbg;
class _userprofileState extends State<userprofile> {
  @override
  Widget build(BuildContext context) {
    Future<void> _pickedImageGallery() async {
      final pickedImage=
      await ImagePicker().pickImage(source: ImageSource.gallery);
      if(pickedImage==null)return;
      setState(() {
        selectedImage=File(pickedImage.path);
      });
    }
     Future<void>_backgroundImageGallery()async{
      final bgimage = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(bgimage == null)return;
      setState(() {
        selectedbg=File(bgimage.path);
});
    }
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),),
      body: Column(
        children: [
          Stack(
            children: [
            Container(
              decoration: BoxDecoration(image: DecorationImage(
                fit: BoxFit.cover,
                image: selectedbg!=null?FileImage(selectedbg!):AssetImage('')as ImageProvider<Object>),),
              height: 200,
              width: 360,
              // color: Colors.black,
              child:Align(
                alignment: Alignment.bottomRight,
                child: IconButton(onPressed: (){
                  _backgroundImageGallery().then((value)async{
                    SettableMetadata metadata=
                    SettableMetadata(contentType: 'image/jpeg');
                    final currenttime=TimeOfDay.now();
                    UploadTask uploadTask=FirebaseStorage.instance
                    .ref()
                    .child('profileimage/profile$currenttime')
                    .putFile(selectedbg!,metadata);

                    TaskSnapshot snapshot=await uploadTask;

                    await snapshot.ref.getDownloadURL().then((url){
                      String id=randomString(10);
                      FirebaseFirestore.instance
                      .collection('image')
                      .doc(id)
                      .set({'image':url,'id':id});
                    });
                    
                    
                  });
                }, icon: Icon(Icons.camera_alt,color: Colors.black,))
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(child:Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: selectedImage!=null?FileImage(selectedImage!):AssetImage('')as ImageProvider<Object>),
                  shape:BoxShape.circle,color: Colors.grey ),
               child: Padding(
                 padding: const EdgeInsets.only(top: 50,left: 65),
                 child: IconButton(onPressed: ()async{
                await _pickedImageGallery().then((value)async{
                    SettableMetadata metadata=
                    SettableMetadata(contentType: 'image/jpeg');
                    final currenttime=TimeOfDay.now();
                    UploadTask uploadTask=FirebaseStorage.instance
                    .ref()
                    .child('profileimage/profile$currenttime')
                    .putFile(selectedImage!,metadata);

                    TaskSnapshot snapshot=await uploadTask;

                    await snapshot.ref.getDownloadURL().then((url){
                      String id=randomString(10);
                      FirebaseFirestore.instance
                      .collection('image')
                      .doc(id)
                      .set({'image':url,'id':id});
                    });
                    
                    
                  });
                 }, icon:Icon(Icons.camera_alt,size: 30,),color: Colors.black, )
                 //Icon(Icons.camera_alt),
               ),
                // radius: 50,
                // backgroundImage: AssetImage('image/wdngphtgrpr.jpg'),
                )
                ),
            ),
            
            ],
            
          ),
          Text("jubila",style: GoogleFonts.inriaSerif(color:Colors.black),),
          Text("jubilamulakkal@gmail.com",style: GoogleFonts.inriaSerif(color:Colors.black),),
          Column(
            children: [
             ElevatedButton(style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.circular(12))),
              backgroundColor: MaterialStatePropertyAll(Colors.black)
             ),
              onPressed: (){}, child: Text('Edit profile',style: GoogleFonts.inriaSerif(color:Colors.white),
              )
              ),

  //             IconButton(onPressed: ()async{
  //             try{
  // await _pickedImageGallery();
  //             }catch(e){
  //               log('error lounch cemara $e');

  //             }
  //                }, icon:Icon(Icons.camera_alt,size: 30,),color: Colors.amber, )
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text('Uploads',style: TextStyle(fontWeight: FontWeight.bold)))
        ],
        
      ),

    );
  }
}