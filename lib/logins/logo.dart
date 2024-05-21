import 'dart:async';

import 'package:captura/home/home2.dart';
import 'package:captura/logins/login1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class logo extends StatefulWidget {
  const logo({super.key});

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  void initState(){
     Timer(Duration(seconds: 1), () => check());
    super.initState();
  }

  check() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    String? name = preferences.getString('isloggin');

    if (name != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>Login1()),
          );
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login1(),
          ));
    }

  }
  Widget build(BuildContext context) {
    SplashScreenView(navigateRoute: Login1(),
    duration: 4000,
    imageSize: 250,
      
    );
    return Scaffold(
      body: Container(
        
        height: double.infinity,
        width: double.infinity,
        
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/high-angle-shot-lens-headphones-gimbal-phone.jpg'),fit: BoxFit.cover,
        )
        ),
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
          Text('Captura',style: GoogleFonts.inspiration(color:Colors.white,fontSize:80),
        
        ),
        
        ],
        
        )
        
        
        
      ),
    );
  }
}
