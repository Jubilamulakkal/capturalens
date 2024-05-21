import 'dart:io';

import 'package:captura/home/home2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class Earth extends StatefulWidget {
  const Earth({super.key});

  @override
  State<Earth> createState() => _EarthState();
}

class _EarthState extends State<Earth> {
    
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          
        
        title: Text(
          "Earth's Creatures",
          style: GoogleFonts.inriaSerif(color: Colors.black, fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/street.jpg'), fit: BoxFit.fill),
            ),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Earth's Creature                          By CAPTURA",
                  style:
                      GoogleFonts.inriaSerif(color: Colors.white, fontSize: 25),
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 500,
            width: double.infinity,
            color: CupertinoColors.lightBackgroundGray,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      " What our editors looking for",
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.lightbulb_outline_rounded,
                      color: Colors.black,
                      size: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.circle,color: Colors.grey,size: 15,),
                     SizedBox(
                      width: 5,
                    ),
          Text(
                  "Before you start shooting,take sometime\nto observe the animals in their habitat.",
                   style:
                       GoogleFonts.inriaSerif(color: Colors.black),
                 ),
                  ],
                ),
               Padding(
                 padding: const EdgeInsets.only(left: 45,top: 10),
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Icon(Icons.circle,color: Colors.grey,size: 15,),
                       SizedBox(
                        width: 5,
                      ),
                           Text('Ensure that the eyes are sharp,and in focus\n,as they can convey a lot of emotion and\nconnection in your photos.',
                     style:
                         GoogleFonts.inriaSerif(color: Colors.black),
                   ),
                 ]
                  
                 ),
               ), 
               
               Text("Timing",style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:25),), 
               Row(
                 children: [
                   Icon(CupertinoIcons.clock,color: Colors.black,size: 30,),
                   SizedBox(
                    width: 20,
                   ),
                   Text('1 jan 2024,7.30 pm IST-23 feb 2024 10.29 am\nIST,your photos must be submitted between\nthese times.',style: GoogleFonts.inriaSerif(color:Colors.black),)
                 ],
               ),
               Text('About the price',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:25),) ,
               Padding(
                 padding: const EdgeInsets.only(left: 20,top: 10),
                 child: Row(
                   children: [
                     Icon(Icons.circle,color: Colors.grey,size: 15,),
                    Text('10,000 Rs',style: GoogleFonts.inriaSerif(color:Colors.black),),
                 
                   ],
                 ),
               ),
               Text("Rules",style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:25),),
               Row(
                children: [
                  Icon(CupertinoIcons.hammer,color: Colors.black,size: 35,),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.circle,color: Colors.grey,size: 15,),
                Text("Photo must adhere to the theme.",style: GoogleFonts.inriaSerif(color:Colors.black),)
                ],
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 40),
                 child: Row(
                  children: [
                    
                    Icon(Icons.circle,color: Colors.grey,size: 15,),
                  Text("Photo must be your own.",style: GoogleFonts.inriaSerif(color:Colors.black),) 
                  ],
                 ),
               ),
               SizedBox(
                height: 10,
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 40),
                 child: Row(
                  children: [
                     Icon(Icons.circle,color: Colors.grey,size: 15,),
                  Text("Photo must not be AI generated.",style: GoogleFonts.inriaSerif(color:Colors.black),)
                  ],
                 ),
               )
              ],
              
            ),
            
          ),
          Row(
            children: [
              Text('About the prize',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:20),),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Icon(Icons.circle,color:Colors.grey,size: 15,),
              Text('One winner will recieve 10,000 Rs',style: GoogleFonts.inriaSerif(color:Colors.black),)
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
              backgroundColor: MaterialStatePropertyAll(Colors.pink[300])
            
            ),
              onPressed: (){
                 showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return CustomBottomSheet();
          },
                      );
              }, child:Text('Submit',style: GoogleFonts.inriaSerif(color:Colors.black),) ),
          )
        ],
      )),
    );
  }
}
class CustomBottomSheet extends StatefulWidget {
 
  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
   Future<void> _pickedImageGallery() async {
      final pickedImage=
      await ImagePicker().pickImage(source: ImageSource.gallery);
      if(pickedImage==null)return;
      setState(() {
        selectedImage=File(pickedImage.path);
      });
      }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Text(
          //   'Custom Bottom Sheet',
          //   style: TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //   },
          //   child: Icon(Icons.filter_outlined),Text('Choose from library',style: GoogleFonts.inriaSerif(color:Colors.black),),
          // ),
        GestureDetector(
          onTap: ()async
           {
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
          },
          child: Container(
            height: 40,
            width: 200,
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(12),
            color: CupertinoColors.lightBackgroundGray,
              
            ),
            
              child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          Text('Upload new photo',style: GoogleFonts.inriaSerif(color:Colors.black),)
                      
                        ],
                      ),
                    ),
              
                  ],
                ),
              
            
          ),
        ),
        SizedBox(
          height: 20,
    
        ),
         GestureDetector(onTap: ()
          async{
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
         },
           child: Container(
            height: 40,
            width: 200,
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(12),
            color: CupertinoColors.lightBackgroundGray,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Icon(Icons.filter_outlined),
                      Text('Choose from library',style: GoogleFonts.inriaSerif(color:Colors.black),)
                  
                    ],
                  ),
                ),
              ],
            ),
                     ),
         ),
         
         
    
          
        ],
      ),
    );
  }
}
//Before you start shooting, take
//sometime to observe the animals
//in their habitat                                    
//Ensure that the eyes are sharp,