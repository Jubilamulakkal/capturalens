import 'package:captura/logins/verfctn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class password1 extends StatefulWidget {
  const password1({super.key});

  @override
  State<password1> createState() => _password1State();
}

class _password1State extends State<password1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width:double.infinity ,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/top-view-photography-accesories-with-copy-space.jpg'),fit: BoxFit.cover,
        )

    ),
    child: Column(
      
     children: [
      Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Text('Forgot Password?',style:GoogleFonts.inriaSerif(color:Colors.white,fontSize:30)),
      ),
      Padding(
        padding: const EdgeInsets.only(top:50,left:30,right: 30),
        child: TextField(decoration: InputDecoration(
          enabledBorder:OutlineInputBorder(
            borderSide:BorderSide(color: Colors.white) ,
          ) ,
          hintText: 'E mail/phone no',hintStyle:GoogleFonts.inriaSerif(color: Colors.white)
        ),
        ),
        
      ),
      SizedBox(
        height: 30,
      ),
      SizedBox(
        height:30 ,
        width: 200,
        child: ElevatedButton(style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
          backgroundColor: MaterialStatePropertyAll(Colors.white)
        ),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>vrfctn() ));
          }, child: Text('Send',style: GoogleFonts.inriaSerif(color:Color.fromARGB(255, 0, 0, 0)))),
      )
     ], 
     
    ),
      ), 
    );
  }
}