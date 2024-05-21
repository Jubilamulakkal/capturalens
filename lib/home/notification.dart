import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notfication extends StatefulWidget {
  const Notfication({super.key});

  @override
  State<Notfication> createState() => _NotficationState();
}

class _NotficationState extends State<Notfication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Text("Notifications",style: GoogleFonts.inriaSerif(color:Colors.black),),
      ),
body: 
    // children: [
    //   Container(
    //     height: 70,
    //     width: 300,
    //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,boxShadow: [
    //             BoxShadow(color: Colors.grey.withOpacity(0.5),
    //             spreadRadius: 5,
    //             blurRadius: 7,
    //             offset: Offset(6,6 ))
    //           ]),
         Expanded(child: ListView.builder(itemCount: 3,
              itemBuilder: (context,index ){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: (
                  Container(
                  
                          height: 70,
                          width: 300,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(6,6 ))
                                ])
                  )
                                
                  ),
                ); 
              }
         )
         )
         );
         
  

    
  }
}