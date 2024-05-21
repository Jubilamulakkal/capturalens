import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Appinfo extends StatefulWidget {
  const Appinfo({super.key});

  @override
  State<Appinfo> createState() => _AppinfoState();
}

class _AppinfoState extends State<Appinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        backgroundColor: Colors.white,
        title:Row(
          children: [
            Icon(Icons.info_outline,color: Colors.black,),
            Text('App info',style: GoogleFonts.inriaSerif(color:Colors.black,),)
          ],
        ) 
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/high-angle-shot-lens-headphones-gimbal-phone.jpg'),fit: BoxFit.cover),borderRadius: BorderRadius.circular(12)),
              child: Center(child: Text('Captura',style: GoogleFonts.inspiration(color:Colors.white,fontSize:25),)),
            ),
          ),
          Text('Version 1.0',style: GoogleFonts.inriaSerif(color:Colors.black),),
          Text('2024',style: GoogleFonts.inriaSerif(color:Colors.black),)
        ],
      ),
    );
  }
}