import 'dart:async';

import 'package:captura/bussineslogic/firebase_options.dart';
import 'package:captura/eg.dart';
import 'package:captura/home/Booking.dart';
import 'package:captura/home/appinfo.dart';
import 'package:captura/home/bottomnav.dart';
import 'package:captura/home/chatting.dart';
import 'package:captura/home/chngpswrd.dart';
import 'package:captura/contest/contests.dart';
import 'package:captura/contest/earthcreature.dart';
import 'package:captura/home/editprofile.dart';
import 'package:captura/home/featrdphgs.dart';
import 'package:captura/home/messenger.dart';
import 'package:captura/home/popularphts.dart';
import 'package:captura/home/profilepht.dart';
import 'package:captura/home/settings.dart';
import 'package:captura/home/upload.dart';
import 'package:captura/home/userprofile.dart';
import 'package:captura/home/wdngwrk.dart';
import 'package:captura/home/wedding.dart';
import 'package:captura/logins/frgtpsswrd.dart';
import 'package:captura/home/home1.dart';
import 'package:captura/home/home2.dart';
import 'package:captura/logins/login1.dart';
import 'package:captura/logins/logo.dart';
import 'package:captura/logins/resetpaswrd.dart';
import 'package:captura/logins/signuppht.dart';
import 'package:captura/logins/signupuser.dart';
import 'package:captura/logins/success.dart';
import 'package:captura/logins/verfctn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
       
      home: logo(),
     //home: Home2(),
     //home: category(),
     //home: Wedding(),
    // home: Work(),
  // home: Booking(),
  //home: Login1(),
     // home: password(),
    // home: vrfctn(),
    //home: Success(),
   //home: User(),
    //home: Reset(),
    //home: Popular(),
    //home: Featured(),
    //home: Contest(),
     // home: Earth(),
    //home: Settings(),
   // home: Changepassword(),
   //home: Appinfo(),
   //home: Upload(),
   //home: eg(),
   //home: Photographer(),
   //home: userprofile(),
   //home:bottomnav(indexnum: 0,),
   // home: Messenger(),
   //home:Profilepht(),
    //home: chat(),
    //home: Editprofile(),
    );
  }
}


