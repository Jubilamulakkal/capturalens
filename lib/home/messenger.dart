import 'package:captura/home/chatting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      leading:IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),    
      title:Text('Messenger',style:GoogleFonts.inriaSerif(color:Colors.black)) 
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

Expanded(child: ListView.builder(itemCount: 3,
              itemBuilder: (context,index ){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>chatting()));
                  },
                    child: (
                    Container(
                    
                            height: 70,
                            width: 300,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.transparent,
                    
                     ),
                     child: Row(
                       children: [
                         CircleAvatar(backgroundColor: Colors.grey,radius: 30,),
                         SizedBox(
                          width: 15,
                         ),
                         Text('Jyothika',style: GoogleFonts.inriaSerif(color:Colors.black),),
                         SizedBox(
                          width: 110,
                         ),
                         Text("2 miutes ago",style: GoogleFonts.inriaSerif(color:Colors.black),)
                       ],
                     ),
                     
                    )
                                  
                    ),
                  ),
                ); 
              }
         )
         )
          ],
        )
           
       
    );
  }
}