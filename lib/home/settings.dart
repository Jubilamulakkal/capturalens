import 'package:captura/home/appinfo.dart';
import 'package:captura/home/chngpswrd.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        backgroundColor: Colors.white,
        title: Text('Settings',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:15),),
      ),
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 30,top: 20),
          child: Row(
            children: [
              Icon(Icons.lock,color: Colors.black,),
              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Changepassword()));
              }, child: Text('Change Password',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:15),)),
              
            ],
            
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 30),
          child: Row(
            children: [
              Icon(Icons.info_outline,color: Colors.black,),
              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Appinfo()));
              }, child: Text('App info',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:15),))
            ],
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 10,left: 30),
          child: Row(
            children: [
              Icon(Icons.delete_outline_outlined,color: Colors.black,),
              TextButton(onPressed: (){}, child: Text('Delete Account',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:15),))
            ],
          ),
        ),
              
        ],
      ),
    );
  }
}