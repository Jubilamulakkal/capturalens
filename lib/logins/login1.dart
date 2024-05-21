import 'package:captura/home/bottomnav.dart';
import 'package:captura/home/home2.dart';
import 'package:captura/logins/frgtpsswrd.dart';
import 'package:captura/logins/signuppht.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => Login1State();
}

class Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
  final Usernamecontroller=TextEditingController();
final Passwordcontroller=TextEditingController();
final _formKey = GlobalKey<FormState>();
String email="",password="";
login()async
{
  try {
  final Credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
 );
 ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Sign in succesfull')));
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>  Home2(),
            ));
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('The user is not found'),
          ));
  } else if (e.code == 'wrong-password') {
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Wrong password'),
    ));
}
}
}
    return Scaffold(
     
      body: 
      Container(
        height: double.infinity,
        width:double.infinity ,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/realistic-camera-lens-with-reflections-3d-rendering.jpg'),fit: BoxFit.cover,
        )
      
          ),
        
        
          child: Padding(
      padding: const EdgeInsets.only(top: 100,left: 20,right: 30),
      child: SingleChildScrollView(
        child: Form(
          key:_formKey ,
          
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:40 ),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller:Usernamecontroller ,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter a email';
                    }
                    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                          .hasMatch(value)) {
                        return 'Invalid email format';
       }
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                    ),
                    hintText: 'Email/phone no',hintStyle:GoogleFonts.inriaSerif(color: Colors.white,)
                    
                    ),
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left:40 ),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: Passwordcontroller,
                   validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter a value';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                    ),
                    hintText: 'Password',hintStyle:GoogleFonts.inriaSerif(color: Colors.white),suffixIcon: Icon(Icons.remove_red_eye_outlined)
                    
                    ),
                    ),
              ),
          
          SizedBox(
          height: 40,
           ),
              SizedBox(
                width: 200,
                height: 30,
                
                child: 
                
                ElevatedButton(
                  style: ButtonStyle(
                    shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
                    backgroundColor: MaterialStatePropertyAll(Colors.white)
                  ),
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      setState(() {
                        email=Usernamecontroller.text;
                        password=Passwordcontroller.text;
                      });
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => Home2()));
                    login();
                    }
                  }, child: Text("login",style:GoogleFonts.inriaSerif(color:Colors.black))
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  
                    
              
          
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => password1()));
                }, child: Text('forgot password?',style: GoogleFonts.inriaSerif(color:Colors.white),)),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text("Don't have an account?",style: GoogleFonts.inriaSerif(color:Colors.white,)),
                    ),TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>Photographer()));
                    }, child: Text('Sign up',style: GoogleFonts.inriaSerif(color:Colors.lightBlue)),
                ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('________________________or_______________________',style: GoogleFonts.inriaSerif(color:Colors.white),),
            ]
          
            
          
          ),
        ),
      ),
      
          ),
         
      ),
     
  );}
}