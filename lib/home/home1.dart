import 'package:captura/home/Fashion.dart';
import 'package:captura/home/architectural.dart';
import 'package:captura/home/food.dart';
import 'package:captura/home/landscape.dart';
import 'package:captura/home/newborn.dart';
import 'package:captura/home/sports.dart';
import 'package:captura/home/street.dart';
import 'package:captura/home/wedding.dart';
import 'package:captura/home/wildlife.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,))
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Center(
             child: Builder(
               builder: (context) {
                 return GestureDetector(onTap: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>Wedding()));
                 },
                 child:  Container(
                  
                  height: 90,
                  width: 250,
                  
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/wedding3.png',),fit: BoxFit.cover),borderRadius: BorderRadius.circular(17)),
                  child: Center(child: Text('Wedding',style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold,color:Colors.white,fontSize:25,shadows:[Shadow(color:Colors.black,blurRadius: 5)]))),
                 ),
                 );
                 
                 
               }
             ),
           ),
           SizedBox(
            height: 15,
           ),
            Builder(
              builder: (context) {
                return GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Wildlife(), ));
                },
                child: Container(
                  
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/wild.png',),fit: BoxFit.cover),borderRadius: BorderRadius.circular(17)),
                  child: Center(child: Text('Wildlife',style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold,color:Colors.white,fontSize:25,shadows:[Shadow(color: Colors.black,blurRadius: 5)]))),
                 ),
                );
                
              }
            ),
             SizedBox(
              height: 15,
             ),
             Builder(
               builder: (context) {
                 return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Fashion()));
                  },
                  child:  Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/fashion2.jpg',),fit:BoxFit.cover),borderRadius: BorderRadius.circular(17)),
                  child: Center(child: Text('Fashion',style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold,color:Colors.white,fontSize:25,shadows:[Shadow(color: Colors.black,blurRadius: 5)]))),
                 ),
                 );
                
               }
             ),
             SizedBox(
              height: 15,
             ),
             Builder(
               builder: (context) {
                 return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Food()));
                  },
                  child: Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/food1.jpg',),fit: BoxFit.cover),borderRadius: BorderRadius.circular(17)),
                  child: Center(child: Text('Food',style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold,color:Colors.white,fontSize:25,shadows:[Shadow(color: Colors.black,blurRadius: 5)]))),
                 ),
                 );
                 
               }
             ),
             SizedBox(
              height: 15,
             ),
             Builder(
               builder: (context) {
                 return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Architecture()));

                  },
                  child: Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/arch.jpg',),fit: BoxFit.cover),borderRadius: BorderRadius.circular(17)),
                  child: Center(child: Text('Architectural',style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold,color:Colors.white,fontSize:25,shadows:[Shadow(color: Colors.black,blurRadius: 5)]))),
                 ),
                 );
                 
               }
             ),
             SizedBox(
              height: 15,
             ),
             Builder(
               builder: (context) {
                 return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Landscape()));
                  },
                  child:Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/landscape1.jpg',),fit: BoxFit.cover),borderRadius: BorderRadius.circular(17)),
                  child: Center(child: Text('Landscape',style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold,color:Colors.white,fontSize:25,shadows:[Shadow(color: Colors.black,blurRadius: 5)]))),
                 ) ,
                 );
                 
               }
             ),
             SizedBox(
              height: 15,
             ),
             Builder(
               builder: (context) {
                 return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Newborn()));
                  },
                  child: Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/new.jpg',),fit: BoxFit.cover),borderRadius: BorderRadius.circular(17)),
                  child: Center(child: Text('Newborn',style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold,color:Colors.white,fontSize:25,shadows:[Shadow(color: Colors.black,blurRadius: 5)]))),
                 ) ,
                 );
                
               }
             ),
             SizedBox(
              height: 15,
             ),
             Builder(
               builder: (context) {
                 return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Street()));
                  },
                  child: Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/street.jpg',),fit: BoxFit.fitWidth),borderRadius: BorderRadius.circular(17)),
                  child: Center(child: Text('Street',style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold,color:Colors.white,fontSize:25,shadows:[Shadow(color: Colors.black,blurRadius: 5)]))),
                 ),
                 );
                 
               }
             ),
              SizedBox(
              height: 15,
             ),
             Builder(
               builder: (context) {
                 return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sports()));
                  },
                  child:  Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/sports.jpg',),fit: BoxFit.fitWidth),borderRadius: BorderRadius.circular(17)),
                  child: Center(child: Text('Sports',style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold,color:Colors.white,fontSize:25,shadows:[Shadow(color: Colors.black,blurRadius: 5)]))),
                 ),
                 );
                
               }
             ),
          ],
        ),
      ),
    );
  }
}