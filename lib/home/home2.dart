
import 'dart:io';

import 'package:captura/collection/model.dart';
import 'package:captura/contest/contests.dart';
import 'package:captura/home/appinfo.dart';
import 'package:captura/home/featrdphgs.dart';
import 'package:captura/home/home1.dart';
import 'package:captura/home/notification.dart';
import 'package:captura/home/popularphts.dart';
import 'package:captura/home/profilepht.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}
File? selectedImage;

class _Home2State extends State<Home2> {
  int _selectindex=0;
  final firestore=FirebaseFirestore.instance;
  final auth=FirebaseAuth.instance;
 // void _onItemTapped(int index){
    //setState((){
    //_selectindex=index;
   // });
  //}
  void _onItemTapped(int index) {
    setState(() {
      _selectindex = index;
      if (_selectindex == 2) {
        // Show bottom sheet when "Add" icon is tapped
        _showBottomSheet(context);
      }
   
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => category()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home2()),
        );
        break;
      // case 2:
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => ),
      //   );
      //   break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Notfication()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Contest()),
        );
        break;
    }
  }

  void _showBottomSheet(BuildContext context) {
    Future<void> _pickedImageGallery() async {
      final pickedImage=
      await ImagePicker().pickImage(source: ImageSource.gallery);
      if(pickedImage==null)return;
      setState(() {
        selectedImage=File(pickedImage.path);
      });
    }
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builderContext) {
        return Container(
          
          height: 150,
          
          child: Center(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text(
                      'Choose a photo from',
                      style: GoogleFonts.inriaSerif(color:Colors.black,fontSize: 20),
                    ),
                    Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 125,top: 15),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color:Colors.black,size: 30)),
                  IconButton(onPressed: ()
                  async{
                await _pickedImageGallery().then((value)async{
                    SettableMetadata metadata=
                    SettableMetadata(contentType: 'image/jpeg');
                    final currenttime=TimeOfDay.now();
                    UploadTask uploadTask=FirebaseStorage.instance
                    .ref()
                    .child('profileimage/profile$currenttime')
                    .putFile(selectedImage!,metadata);

                    TaskSnapshot snapshot=await uploadTask;

                    await snapshot.ref.getDownloadURL().then((url){
                      String id=randomString(10);
                      FirebaseFirestore.instance
                      .collection('image')
                      .doc(id)
                      .set({'image':url,'id':id});
                    });
                    
                    
                  });
                 },
                   icon: Icon(Icons.folder_copy_sharp,color: Colors.black,size:30))
                ],
                
              ),
            ),
            
          ],
        )
                  ],
                  
                ),
              ),
            
            ),
            
          ),
          
        );
       
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    String id=auth.currentUser!.uid;
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        
       //leading:  IconButton(onPressed: (){
        //Scaffold.of(context).openDrawer();
       //}, icon: Icon(Icons.person,color: Colors.white,)),
      //backgroundColor: Colors.black,
      title: 
      Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Text('Explore',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:25),),
      ),
      actions: [IconButton(onPressed: (){}, icon:Icon(Icons.search_outlined,color: Colors.black,size: 30,))],
      ),
      drawer: Drawer(
        child:StreamBuilder(stream: firestore.collection('firebase').doc(id).snapshots(), builder: (context,snapshot){
          DocumentSnapshot data=snapshot.data!;
          if(snapshot.connectionState==ConnectionState.waiting){
            const Center(child: CircularProgressIndicator(),);
          }
          if(!snapshot.hasData||snapshot.data==null){
            return const Center(child: Text('No data available'),);
          }
         return ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage("image/wdngphtgrpr.jpg"),),
                  //Icon(Icons.person,color: Colors.black,size: 25,),
                  Text(
                     "${data['name']}",
                    style: GoogleFonts.inriaSerif(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  
                ],
              ),
            ),
            ListTile(
              
              title: Text('Settings',style: GoogleFonts.inriaSerif(color:Colors.black),),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                //Navigator.pop(context);
                // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings(),));
              },
            ),
            ListTile(
              title: Text('App info',style: GoogleFonts.inriaSerif(color:Colors.black),),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                //Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(builder: (context) => Appinfo(),));
              },
            ),
            ListTile(
              title: Text('Logout',style: GoogleFonts.inriaSerif(color:Colors.black),),
            )
          ],
        );
        })
         
      ),
      body:
      SingleChildScrollView(
        child: Column(
          
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: 
                
                  Row(
                    children: [
                      Text('Popular photos',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:20),),
                      
                      SizedBox(
                        width: 125,
                      ),
        
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Popular()));
                }, child: Text('View all',style: GoogleFonts.inriaSerif(color:Colors.brown,fontSize:14),)),
              ),
            
                    ],
                  ),
                
              
            ),
         
           Padding(
             padding: const EdgeInsets.only(top: 10,left: 10),
             child: Row(
               children: [
                 Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                   height: 137,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(image: AssetImage('image/popimg.avif'),fit: BoxFit.cover),
                   
                  ),
                 
                 ),
                  
                 
                 ),
                 SizedBox(
                  width: 10,
                 ),
                  Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                   height: 137,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg2.jpg'),fit: BoxFit.cover),
                    // color: Colors.amber
                  ),
                 
                 ),
                  
                 
                 ),
               ],
             ),
             
           ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 10),
              child: Row(
                children: [
                  Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                         height: 137,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg3.jpg'),fit: BoxFit.cover),
                          // color: Colors.amber
                        ),
                       
                       ),
                        
                       
                       ),
                       SizedBox(
                        width: 10,
                       ),
                        Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                     height: 137,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      // color: Colors.amber
                    ),
                   
                   ),
                    
                   
                   ),
                ],
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: Row(
                children: [
                
                Text('Featured Photographers',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:20),),
                SizedBox(
                  width: 40,
                ),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Featured()));
                }, child: Text('View all',style: GoogleFonts.inriaSerif(color:Colors.brown,fontSize:15),))
                ],
              
              ),
            ),
            Container(
              
             child: Stack(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10,top: 5),
                         child: Container(
                             height: 95,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                              color: Colors.amber
                            ),
                           
                           ),
                       ),
                       SizedBox(
                        width: 10,
                       ),
                          Container(
                       height: 95,
                      width: 135,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                        color: Colors.amber
                      ),
                     
                     ),
                     ],
                     
                     
                   ),
                 ), 
                 Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 115,left: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 95,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                              color: Colors.amber
                            ),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: Container(
                                                     height: 95,
                                                     width: 135,
                                                     decoration: BoxDecoration(
                                                       borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                                                       color: Colors.amber
                                                     ),
                                                   ),
                           ),
                        ],
                        
                      ),
                    ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    CircleAvatar(backgroundImage: AssetImage("image/wdngphtgrpr.jpg"),radius: 30,),
                                       
             
                    SizedBox(
                      height: 30,
                      width: 80,
                      
                      child: ElevatedButton(style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
                       backgroundColor: MaterialStatePropertyAll (Colors.black)
                      ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepht()));
                        }, child: Text('view',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:12),
                        ),
                        
                        ),
                    ),
                  ],
                  
                 )
                  
               ]
               
             
             ),
             
             
              height: 350,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(6,6 ))
              ]),
             
             
            ),
            SizedBox(
              height: 15,
            ),
             Padding(
               padding: const EdgeInsets.only(bottom: 5),
               child: Container(
                child: Stack(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10,top: 5),
                           child: Container(
                               height: 95,
                              width: 135,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                                color: Colors.amber
                              ),
                             
                             ),
                         ),
                         SizedBox(
                          width: 10,
                         ),
                            Container(
                         height: 95,
                        width: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                          color: Colors.amber
                        ),
                       
                       ),
                       ],
                       
                       
                     ),
                   ), 
                   Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 115,left: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 95,
                              width: 135,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                                color: Colors.amber
                              ),
                            ),
                             Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: Container(
                                                       height: 95,
                                                       width: 135,
                                                       decoration: BoxDecoration(
                                                         borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                                                         color: Colors.amber
                                                       ),
                                                     ),
                             ),
                          ],
                          
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 30,
                        width: 80,
                        
                        child: ElevatedButton(style: ButtonStyle(
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
                         backgroundColor: MaterialStatePropertyAll (Colors.black)
                        ),
                          onPressed: (){}, child: Text('view',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:12),
                          ),
                          
                          ),
                      ),
                      
                    ],
                    
                   )
                    
                 ],
                 
                 
               
               ),
               
                
                height: 350,
                width: 300,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(6,6 ))
                ]
                ),
                ),
             ),

            
                 
            
        ],
        
        
          
        ),
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        
        items: [BottomNavigationBarItem(icon: Icon(Icons.image,color: Colors.white,),label: 'for you',backgroundColor: Colors.black.withOpacity(0.2)
      ),
      BottomNavigationBarItem(icon: Icon(Icons.explore_outlined,color: Colors.white,),label: 'Explore',backgroundColor: Colors.black.withOpacity(0.2)),
      BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined,color: Colors.white,),label: 'upload',backgroundColor: Colors.black.withOpacity(0.2)),
      
      BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.white,),label: 'notifications',backgroundColor: Colors.black.withOpacity(0.2)),
      BottomNavigationBarItem(icon: Icon(Icons.rocket_launch_outlined,color: Colors.white,),label: 'contest',backgroundColor: Colors.black.withOpacity(0.2))
      ],
      
      showSelectedLabels: false,
       currentIndex:_selectindex,
          onTap:_onItemTapped,
          
          ),
          
  extendBody:false, 
  
  // bottomNavigationBar: SafeArea(
    
  //     child: Container(
  //      // height: 56,
  //       padding: EdgeInsets.all(12),
  //       margin: EdgeInsets.symmetric(horizontal: 24),
  //       decoration: BoxDecoration(
  //         color: Colors.black87.withOpacity(0.8),
  //         borderRadius: BorderRadius.all(Radius.circular(24)),
  //         boxShadow: [BoxShadow(color: Colors.black87.withOpacity(0.3),offset:Offset(0, 20),blurRadius: 20),
          
  //         ]
  //         ),
          
  //       child: Row(
          
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
            
  //           Icon(Icons.photo,color: Colors.white,),
  //           Icon(Icons.explore_outlined,color:Colors.white,),
  //           Icon(Icons.add_a_photo_outlined,color:Colors.white,),
  //           Icon(Icons.notifications,color:Colors.white,),
  //           Icon(Icons.rocket_launch_outlined,color:Colors.white,),

  
            
  //         ],
          
  //       ),
  //     ),
    
  //   ),
   
      );
  }
}