import 'package:captura/logins/resetpaswrd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class vrfctn extends StatefulWidget {
  const vrfctn({super.key});

  @override
  State<vrfctn> createState() => _vrfctnState();
}

class _vrfctnState extends State<vrfctn> {
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
          child: Text('Verification',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:30)),
        ),
        SizedBox(
          height:40,

        ),
          
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: TextField(inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],decoration: InputDecoration(fillColor:Colors.white,filled: true),
                      
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: TextField(inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],decoration: InputDecoration(fillColor:Colors.white,filled: true),
                      
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: TextField(inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],decoration: InputDecoration(fillColor:Colors.white,filled: true),
                      
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: TextField(inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],decoration: InputDecoration(fillColor:Colors.white,filled: true),
                      
                      ),
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(
            height: 40,
          ),
        SizedBox(
          height:35 ,
          width: 200,
          child: ElevatedButton(style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
            backgroundColor: MaterialStatePropertyAll(Colors.white)
            ),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Reset()));
            }, child:Text('verify',style: GoogleFonts.inriaSerif(color:Colors.black),)),
        ),
        SizedBox(
          height: 10,
        ),
Row(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 65),
      child: Text("Didn't recieve code?",style: GoogleFonts.inriaSerif(color:Colors.white),),
    ),
    TextButton(onPressed: (){}, child: Text('Resend now',style: GoogleFonts.inriaSerif(color:Colors.blue),))

  ],
  
),

      ],
      
      
      
     ),
     
       
      ),
    );
  }
}