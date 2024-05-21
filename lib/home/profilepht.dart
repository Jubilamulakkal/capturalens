
import 'package:captura/home/chatting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilepht extends StatefulWidget {
  const Profilepht({super.key});

  @override
  State<Profilepht> createState() => _ProfilephtState();
}

class _ProfilephtState extends State<Profilepht> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Text('Profile',style: GoogleFonts.inriaSerif(color:Colors.black),),
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>chatting()));
        }, icon: Icon(CupertinoIcons.chat_bubble))],
      ),
body: SingleChildScrollView(
  child: Column(
        children: [
          Stack(
            children: [
              Image.asset("image/wedding5.avif"),
             
              Padding(
                padding: const EdgeInsets.only(top: 160,left: 110),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70,
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 170, left: 120),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("image/wdngphtgrpr.jpg"),
                ),

              ),
             Column(
        crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 290,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Jyothika",style: GoogleFonts.inriaSerif(color:Colors.black),),
                      Icon(Icons.location_on_sharp),
                      Text("kochi",style: GoogleFonts.inriaSerif(color:Colors.black),),
                    ],
                  ),
                  Text("ABOUT ME",style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:25),),
                  SizedBox(
                    height: 10,

                  ),
                  Text('Wedding Photographer,Experience of about 3 years in wedding photography.',style: GoogleFonts.inriaSerif(color:Colors.black),),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.mail_outline,color: Colors.black,size: 30,),
                      Text('Jyothika@gmail.com',style: GoogleFonts.inriaSerif(color:Colors.black),)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone_enabled_outlined,color: Colors.black,size: 30,),
                      Text('+91934562767',style: GoogleFonts.inriaSerif(color:Colors.black),)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.facebook_outlined,color: Colors.black,size: 30,),
                      Text('',style: GoogleFonts.inriaSerif(color:Colors.black),)
                    ],
                  ),
Text("website links"),
SizedBox(
  height: 35,
),
 Text('Uploads',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:20),),
//  Expanded(child: ListView.builder(itemCount: 3,
//               itemBuilder: (context,index ){
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: (
//                   Container(
                  
//                           height: 75,
//                           width: 300,
//                           color: Colors.amber,
                         
//                   )
                                
//                   ),
//                 ); 
//               }
//          )
//          )
              ],
              
  )
             ] 
             )
             ]
    )
     ),
      );
  }
}