
import 'dart:io';

import 'package:captura/home/home2.dart';
import 'package:captura/home/userprofile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
 
      
  void _showSaveDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Save changes",style: GoogleFonts.inriaSerif(color:Colors.black),),
        content: Text("Your profile has been updated.",style: GoogleFonts.inriaSerif(color:Colors.black),),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK",style: GoogleFonts.inriaSerif(color:Colors.green[800]),),
          ),
        ],
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Text('Edit Profile',style: GoogleFonts.inriaSerif(color:Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Stack(
            children: [
              Container(
                height: 200,
                width: 360,
                color: Colors.grey,
                child: IconButton(onPressed: (){
                  
                }, icon: Icon(Icons.camera_alt_outlined,color: Colors.black,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150,left: 130),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    
                    shape: BoxShape.circle,color: Colors.blueGrey),
                  
                  child: IconButton(onPressed: (){
                   
                  }, icon: Icon(Icons.camera_alt_outlined,color: Colors.black,)),
                ),
              ),
             
            ],
            
           ),
           Text("About",style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:18),),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',labelStyle: GoogleFonts.inriaSerif(color:Colors.grey)
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: TextField(
                decoration: InputDecoration(labelText: "Bio",labelStyle:GoogleFonts.inriaSerif(color:Colors.grey) ),maxLines: 5,
              ),
            ), 
            SizedBox(
              height: 15,
            ),
            Text("Location",style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:18),),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: TextField(
                  decoration: InputDecoration(
                    labelText: 'city',labelStyle: GoogleFonts.inriaSerif(color:Colors.grey)
                  ),
                ),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'state',labelStyle: GoogleFonts.inriaSerif(color:Colors.grey)
                  ),
                ),
              ),
                SizedBox(
              height: 15,
            ),
            Text("Contact",style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:18),),
             Padding(
               padding: const EdgeInsets.only(right: 5,left: 5),
               child: TextField(
                  decoration: InputDecoration(
                    labelText: 'email',labelStyle: GoogleFonts.inriaSerif(color:Colors.grey)
                  ),
                ),
             ), 
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'phone no',labelStyle: GoogleFonts.inriaSerif(color:Colors.grey)
                  ),
                ),
              ), 
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'facebook',labelStyle: GoogleFonts.inriaSerif(color:Colors.grey)
                  ),
                ),
              ), 
               Padding(
                 padding: const EdgeInsets.only(left: 5,right: 5),
                 child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Twitter',labelStyle: GoogleFonts.inriaSerif(color:Colors.grey)
                  ),
                               ),
               ), 
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'instagram',labelStyle: GoogleFonts.inriaSerif(color:Colors.grey)
                  ),
                ),
              ), 
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'website',labelStyle: GoogleFonts.inriaSerif(color:Colors.grey)
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ) ,
              Center(child: TextButton(onPressed: (){
                _showSaveDialog(context);
              }, child: Text('Save',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:20,),)))
          ],
          
        ),
      ),
    );
  }
}