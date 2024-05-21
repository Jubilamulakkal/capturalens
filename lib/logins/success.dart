import 'package:captura/logins/login1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/top-view-photography-accesories-with-copy-space.jpg'),fit: BoxFit.cover,
        )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200,left: 50),
              child: Text('Password changed ',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:30),),
            ),
            Text('succesfully',style:GoogleFonts.inriaSerif(color:Colors.white,fontSize:30) ,),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(style: ButtonStyle(
               shape: MaterialStatePropertyAll (RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)
               )
               ),
               backgroundColor: MaterialStatePropertyAll(Colors.white)
              ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Login1()));
                }, child:Text('login',style: GoogleFonts.inriaSerif(color:Colors.black),
                )
                ),
            ),
          ],
        ),
      ),
    );
  }
}