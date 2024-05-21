import 'package:captura/logins/success.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => ResetState();
}

class ResetState extends State<Reset> {
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
        padding: const EdgeInsets.only(top:150 ),
        child: Text('Reset Your Password',style:GoogleFonts.inriaSerif(color:Colors.white,fontSize:30)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 80,left: 40,right: 40),
        child: TextField(
          decoration: InputDecoration(enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          hintText: 'Password',hintStyle:GoogleFonts.inriaSerif(color: Colors.white,),suffixIcon: Icon(Icons.remove_red_eye_outlined)
           ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
        child: TextField(
          decoration: InputDecoration(
           enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
           ) ,
           hintText: 'Confirm password',hintStyle:GoogleFonts.inriaSerif(color: Colors.white),suffixIcon: Icon(Icons.remove_red_eye_outlined),
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      SizedBox(
        height: 35,
        width: 200,
        child: ElevatedButton(style: ButtonStyle(
         shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))) ,
         backgroundColor: MaterialStatePropertyAll(Colors.white)
        ),
          onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Success()));
          } , child:Text('Reset',style: GoogleFonts.inriaSerif(color:Colors.black))),
      )
    ],
  ),
      ),
    );
  }
}