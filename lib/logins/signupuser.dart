import 'package:captura/home/home2.dart';
import 'package:captura/logins/login1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    final Emailcontroller=TextEditingController();
    final Usernamecontroller=TextEditingController();
final Passwordcontroller=TextEditingController();
final Confirmcontroller=TextEditingController();
final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/top-view-photography-accesories-with-copy-space.jpg'),fit: BoxFit.cover,
        )
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text('Sign Up',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:25),),
                ),
                SizedBox(
                  height: 20,
                ),
               ToggleSwitch(
                activeBgColor: [Colors.white],
                labels: const[
                  'User',
                  'Photographer'
                ],
                activeFgColor: Colors.black,
                
                fontSize: 22,customTextStyles: [GoogleFonts.inriaSerif(color:Colors.black)],
                minHeight: 55,
                minWidth: 150,
                
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 30,left: 40,right: 40),
                 child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: Emailcontroller,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter a value';
                    }
                    return null;
                  },style: TextStyle(color:Colors.white),
                  decoration: InputDecoration(border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                  ),
                  hintText: 'Email/phone no',hintStyle: GoogleFonts.inriaSerif(color:Colors.white)
                  )
                  ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                 child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: Usernamecontroller,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter a value';
                    }
                    return null;
                  },style: TextStyle(color:Colors.white),
                  decoration: InputDecoration(border: OutlineInputBorder(
                 
                           borderSide: BorderSide(color: Colors.white) 
                           ),
                           hintText: 'User name',hintStyle:GoogleFonts.inriaSerif(color:Colors.white) 
                           ),
                           ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                 child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: Passwordcontroller,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter a value';
                    }
                    return null;
                  },style: TextStyle(color:Colors.white),
                  decoration: InputDecoration(border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                 ),
                 hintText: 'Password',hintStyle: GoogleFonts.inriaSerif(color:Colors.white),suffixIcon: Icon(Icons.remove_red_eye_outlined)
                 ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                 child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: Confirmcontroller,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter a value';
                    }
                    return null;
                  },style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white)
                 ),
                 hintText: 'Confirm password',hintStyle: GoogleFonts.inriaSerif(color:Colors.white),suffixIcon: Icon(Icons.remove_red_eye_outlined)
                 ),
                 ),
               ),
               SizedBox(
                height: 30,
               ),
               SizedBox(
                height: 35,
                width: 200,
                 child: ElevatedButton(style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)
                 )
                 ),
                 backgroundColor: MaterialStatePropertyAll(Colors.white)
                 ),
                  onPressed: (){
                     if(_formKey.currentState!.validate()){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Home2()));}
                  }, child:Text('Sign Up',style: GoogleFonts.inriaSerif(color:Colors.black),)),
               ),
               SizedBox(
                height: 10,
               ),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 60),
                     child: Text('Already have an account?',style: GoogleFonts.inriaSerif(color:Colors.white),
                     ),
                   ),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Login1()));
                    }, child: Text('login',style: GoogleFonts.inriaSerif(color:Colors.blue),)
               )
                 ],
               ),
              
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}