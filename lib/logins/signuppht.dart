import 'dart:async';

import 'package:captura/collection/collection.dart';
import 'package:captura/collection/model.dart';
import 'package:captura/home/home2.dart';
import 'package:captura/logins/login1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Photographer extends StatefulWidget {
  const Photographer({super.key});

  @override
  State<Photographer> createState() => _PhotographerState();
}

class _PhotographerState extends State<Photographer> {
  Controller controller = Controller();
  final auth = FirebaseAuth.instance;
  final emailcontroller = TextEditingController();
  final emailphtcontroller = TextEditingController();
  final usernamecontroller = TextEditingController();
  final usernamephtcontroller = TextEditingController();

  final categorycontroller = TextEditingController();
  final citycontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final passwordphtcontroller = TextEditingController();
  final confirmphtcontroller = TextEditingController();

  final confirmcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String email = "", password = "";
  String? _password;
  String? _confirm;
  Future register() async {
    if (password != null) {
      try {
        return await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value)=> {
          value.user!.uid
          
        }
        );

        //  const SnackBar(content: Text("Details added to firebase succesfully"));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Weak password'),
          ));
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Email is already in use'),
          ));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Future addfirebase(
    //   Map<String,dynamic> registereduserinfomap,String userid) async{
    //     return FirebaseFirestore.instance
    //     .collection('Firebase')
    //     .doc(userid)
    //     .set(registereduserinfomap);

    //   }
    //    Future addfirebase1(
    //   Map<String,dynamic> registeredphtinfomap,String phtid) async{
    //     return FirebaseFirestore.instance
    //     .collection('Firebase')
    //     .doc(phtid)
    //     .set(registeredphtinfomap);

    //   }

// }

    // String registered_user_id = randomString(10);
    // String uid=auth.currentUser!.uid;
    // Map<String,dynamic> registereinfomap = {
    //   "name": usernamecontroller.text,
    //   "email": emailcontroller.text,
    //   "password" : passwordcontroller.text,
    //   "id": uid,
    //   "namepht":usernamephtcontroller.text,
    //   "emailpht":emailphtcontroller.text,
    //   "passwordpht":passwordphtcontroller.text,
    //   "category":categorycontroller.text,
    //   "city":citycontroller.text,

    // };
    // await addfirebase(registereinfomap, uid);

    //  await addfirebase1(registereinfomap, uid);

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
                'image/realistic-camera-lens-with-reflections-3d-rendering.jpg'),
            fit: BoxFit.cover,
          )),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.inriaSerif(
                        color: Colors.white, fontSize: 25),
                    selectionColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TabBar(tabs: [
                    Tab(
                      child: Text(
                        'User',
                        style: GoogleFonts.inriaSerif(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Photographer',
                        style: GoogleFonts.inriaSerif(color: Colors.white),
                      ),
                    )
                  ]),
                ),
                Expanded(
                    child: TabBarView(children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 40, right: 40),
                          child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: emailcontroller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please enter an email';
                                }
                                if (!RegExp(
                                        r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                                    .hasMatch(value)) {
                                  return 'Invalid email format';
                                }

                                return null;
                              },
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Email/phone no',
                                  hintStyle: GoogleFonts.inriaSerif(
                                      color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 40, right: 40),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: usernamecontroller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter a value';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'User name',
                                hintStyle: GoogleFonts.inriaSerif(
                                    color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 40, right: 40),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: passwordcontroller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter a value';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'Password',
                                hintStyle:
                                    GoogleFonts.inriaSerif(color: Colors.white),
                                suffixIcon:
                                    Icon(Icons.remove_red_eye_outlined)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 40, right: 40),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: confirmcontroller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter a value';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'Confirm password',
                                hintStyle:
                                    GoogleFonts.inriaSerif(color: Colors.white),
                                suffixIcon:
                                    Icon(Icons.remove_red_eye_outlined)),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 35,
                          width: 200,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17))),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              onPressed: ()async {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    email = emailcontroller.text;
                                    password = passwordcontroller.text;
                                  });
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => Home2()));
                                await  register().then((uid) =>controller.addUser(UserModel(
                                    name: usernamecontroller.text, 
                                    email: emailcontroller.text),
                                     uid) );
                                }
                              },
                              child: Text(
                                'Sign Up',
                                style:
                                    GoogleFonts.inriaSerif(color: Colors.black),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                'Already have an account?',
                                style:
                                    GoogleFonts.inriaSerif(color: Colors.white),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login1()));
                                },
                                child: Text(
                                  'login',
                                  style: GoogleFonts.inriaSerif(
                                      color: Colors.blue),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 40, right: 40),
                          child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: emailphtcontroller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please enter a value';
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Email/phone no',
                                  hintStyle: GoogleFonts.inriaSerif(
                                      color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 40, right: 40),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: usernamephtcontroller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter a value';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'User name',
                                hintStyle: GoogleFonts.inriaSerif(
                                    color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 40, right: 40),
                          child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: categorycontroller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please enter a value';
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Category',
                                  hintStyle: GoogleFonts.inriaSerif(
                                      color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 40, right: 40),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: citycontroller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter a value';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'city',
                                hintStyle: GoogleFonts.inriaSerif(
                                    color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 40, right: 40),
                          child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: passwordphtcontroller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please enter a value';
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Password',
                                  hintStyle: GoogleFonts.inriaSerif(
                                      color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 40, right: 40),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: confirmphtcontroller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter a value';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'Confirm password',
                                hintStyle: GoogleFonts.inriaSerif(
                                    color: Colors.white)),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 35,
                          width: 200,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17))),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              onPressed: ()  {

                              //  await  FirebaseFirestore.instance.collection('gge').doc().set({
                              //     'name': 'name', 'age':'age',
                              //    });
                                //  Controller().addUser(
                                //       UserModel(name: "name", email: "email"),
                                //       "uid");
                                // if (_formKey.currentState!.validate()) {
                                //   setState(() {
                                //     email = emailphtcontroller.text;
                                //     password = passwordphtcontroller.text;
                                //   });

                                  // Navigator.push(context,MaterialPageRoute(builder: (context) => Home2()));
                                  // register().then(
                                  //   (uid) {
                                  //     log("hhhhhhhhhhhhhhhhhhhhhhh");
                                  //     ScaffoldMessenger.of(context)
                                  //         .showSnackBar(SnackBar(
                                  //             content: Text(
                                  //                 'Registration successful')));
                                  //     Navigator.pushReplacement(
                                  //       context,
                                  //       MaterialPageRoute(
                                  //           builder: (context) => Home2()),
                                  //     );
                                  //   },
                                  
                                
                              },
                              child: Text(
                                'Sign Up',
                                style:
                                    GoogleFonts.inriaSerif(color: Colors.black),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                'Already have an account?',
                                style:
                                    GoogleFonts.inriaSerif(color: Colors.white),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login1()));
                                },
                                child: Text(
                                  'login',
                                  style: GoogleFonts.inriaSerif(
                                      color: Colors.blue),
                                ))
                          ],
                        ),
                      ],
                    ),
                  )
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
