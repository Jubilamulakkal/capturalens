import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Changepassword extends StatefulWidget {
  const Changepassword({super.key});

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      backgroundColor: Colors.white,
      title: Text('Change Password',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:15),),
     ), 
     body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50,left: 40,right: 40),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.black),borderRadius: BorderRadius.circular(10)
               ),
               hintText: 'Current Password',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.black),borderRadius: BorderRadius.circular(10)
               ),
               hintText: 'New Password',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.black),borderRadius: BorderRadius.circular(10)
               ),
               hintText: 'Confirm Password',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      Padding(
        padding: const EdgeInsets.only(left: 170),
        child: Row(
          children: [
            TextButton(onPressed: (){}, child: Text('Cancel',style: GoogleFonts.inriaSerif(color:Colors.red,fontSize:15),)),
            TextButton(onPressed: (){}, child: Text('Update',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:15),))
          ],
        ),
      ),
        
      ],
     ),
    );
  }
}