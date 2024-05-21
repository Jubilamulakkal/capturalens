import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('CLIENT INFO',style: GoogleFonts.inriaSerif(color:Colors.black),)),
              
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 40,top: 10),
              child: Container(
                height: 50,
                
                child: TextField(style:
                 TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)
                    ),
                  hintText: 'Name',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
                
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 40,top: 10),
              child: Container(
                height: 50,
                
                child: TextField(style:
                 TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)
                    ),
                  hintText: 'Phone no.',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
                
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 40,top: 10),
              child: Container(
                height: 50,
                
                child: TextField(style:
                 TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)
                    ),
                  hintText: 'E mail',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
                
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 40,top: 10),
              child: Container(
                height: 50,
                
                child: TextField(style:
                 TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)
                    ),
                  hintText: 'Address',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
                
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 40,top: 10),
              child: Container(
                height: 50,
                
                child: TextField(style:
                 TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)
                    ),
                  hintText: 'City',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
                
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 40,top: 10),
              child: Container(
                height: 50,
                
                child: TextField(style:
                 TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)
                    ),
                  hintText: 'PIN',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
                
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('SESSION INFO',style: GoogleFonts.inriaSerif(color:Colors.black)),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 40),
                child: Container(
                  height: 50,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)
                    ),
                    hintText: 'Type of session',hintStyle: GoogleFonts.inriaSerif(color:Colors.black)
                    ),
                  ),
                ),
              ),
              
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150,
                height: 30,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
                    backgroundColor: MaterialStatePropertyAll(Colors.black)
                  ),
                  onPressed: (){}, child: Text("Confirm",style: GoogleFonts.inriaSerif(color:Colors.white),)),
              )
          ],
        ),
      ),
    );
  }
}