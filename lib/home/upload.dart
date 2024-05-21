// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:like_button/like_button.dart';
// import 'package:raised_buttons/raised_buttons.dart';


// class Upload extends StatefulWidget {
//   const Upload({super.key});

//   @override
//   State<Upload> createState() => _UploadState();
// }
//  String firstName = 'Jubila';
//   String lastName = 'Mulakkal';
//   String bio = '';
// class _UploadState extends State<Upload> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     

       
//       // appBar: AppBar(
//       //   title: Text('Drawer Example'),
//       // ),
//       // drawer: Drawer(
//       //   child: ListView(
//       //     padding: EdgeInsets.zero,
//       //     children: [
//       //       DrawerHeader(
//       //         decoration: BoxDecoration(
//       //           color: Colors.blue,
//       //         ),
//       //         child: Text(
//       //           'Drawer Header',
//       //           style: TextStyle(
//       //             color: Colors.white,
//       //             fontSize: 24,
//       //           ),
//       //         ),
//       //       ),
//       //       ListTile(
//       //         title: Text('Option 1'),
//       //         onTap: () {
//       //           // Handle option 1 tap
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: Text('Option 2'),
//       //         onTap: () {
//       //           // Handle option 2 tap
//       //         },
//       //       ),
//       //       // Add more ListTile widgets for additional options
//       //     ],
//       //   ),
//       // ),
//       // body: Center(
//       //   child: Text('My Home Page'),
//       // ),
//       // body: Center(
//       //     child: RatingBar.builder(
//       //       initialRating: 3,
//       //       minRating: 1,
//       //       direction: Axis.horizontal,
//       //       allowHalfRating: true,
//       //       itemCount: 5,
//       //       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//       //       itemBuilder: (context, _) => Icon(
//       //         Icons.star,
//       //         color: Colors.amber,
//       //       ),
//       //       onRatingUpdate: (rating) {
//       //         print(rating);
//       //       },
//       //     ),
//       //   ),
//       //  body: Center(
//       //     child: LikeButton(
//       //       likeBuilder: (bool isLiked) {
//       //         return Icon(
//       //           isLiked ? Icons.favorite : Icons.favorite_border,
//       //           color: isLiked ? Colors.red : Colors.grey,
//       //           size: 30,
//       //         );
//       //       },
//       //       onTap: (bool isLiked) {
//       //         return Future.value(!isLiked);
//       //       },
//       //     ),
//       //   ),
//   //      appBar: AppBar(
//   //       title: Text('Full Screen Bottom Sheet Example'),
//   //     ),
//   //     body: Center(
//   //       child: ElevatedButton(
//   //         onPressed: () {
//   //           showModalBottomSheet(
//   //             context: context,
//   //             isScrollControlled: true,
//   //             builder: (BuildContext context) {
//   //               return Container(
//   //                 height: MediaQuery.of(context).size.height * 0.85,
//   //                 child: Column(
//   //                   children: <Widget>[
//   //                     ListTile(
//   //                       title: Text('Item 1'),
//   //                       onTap: () {
//   //                         // Handle item tap
//   //                       },
//   //                     ),
//   //                     ListTile(
//   //                       title: Text('Item 2'),
//   //                       onTap: () {
//   //                         // Handle item tap
//   //                       },
//   //                     ),
//   //                     // Add more list items as needed
//   //                   ],
//   //                 ),
//   //               );
//   //  },
//   //           );
//   //         },
//   //         child: Text('Open Bottom Sheet'),
          
//   //       ),
        
//   //    ),
       
//       // appBar: AppBar(
//       //   title: Text(widget.title),
//       // ),
//       // body: SingleChildScrollView(
//       //   child: Column(
//       //     children: [
//       //       Image.asset(
//       //         'images/your_image_name.jpg',
//       //         width: double.infinity,
//       //         height: 200.0,
//       //       ),
//       //       Padding(
//       //         padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       //         child: Row(
//       //           children: [
//       //             Text(
//       //               'ABOUT',
//       //               style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //       Padding(
//       //         padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              
//       //           child: 
//       //             Text(
//       //               'First name:',
//       //               style: TextStyle(fontSize: 16.0),
//       //             ),
//       //             SizedBox(width: 8.0),
//       //             Expanded(
//       //               child: TextField(
//       //                 controller: TextEditingController(text: firstName),
//       //                 onChanged: (value) => setState(() => firstName = value),
//       //               ),
//       //             ),
                
              
//       //       ),
//       //       Padding(
//       //         padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       //         child: Row(
//       //           children: [
//       //             Text(
//       //               'Last name:',
//       //               style: TextStyle(fontSize: 16.0),
//       //             ),
//       //             SizedBox(width: 8.0),
//       //             Expanded(
//       //               child: TextField(
//       //                 controller: TextEditingController(text: lastName),
//       //                 onChanged: (value) => setState(() => lastName = value),
//       //               ),
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //       Padding(
//       //         padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       //         child: Row(
//       //           children: [
//       //             Text(
//       //               'Bio:',
//       //               style: TextStyle(fontSize: 16.0),
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //       Padding(
//       //         padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       //         child: TextField(
//       //           controller: TextEditingController(text: bio),
//       //           onChanged: (value) => setState(() => bio = value),
//       //           maxLines: null,
//       //         ),
//       //       ),
//       //       Padding(
//       //         padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       //         child: Row(
//       //           children: [
//       //             Text(
//       //               'LOCATION',
//       //               style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //       Padding(
//       //         padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       //         child: Row(
//       //           children: [
//       //             Text(
//       //               'City:',
//       //               style: TextStyle(fontSize: 16.0),
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       // //       Padding(
//       // //         padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16
              
//       // // ))
//       //       ]
//       //   ))/
// //       import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: HomePage(),
// //     );
// //   }
// // }

// // class HomePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
//     // return Scaffold(
//       appBar: AppBar(
//         title: Text('Custom Bottom Sheet Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showModalBottomSheet(
//               context: context,
//               builder: (BuildContext context) {
//                 return CustomBottomSheet();
//               },
//             );
//           },
//           child: Text('Show Bottom Sheet'),
//         ),
//       ),
//     );
//   }
// }

// class CustomBottomSheet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Custom Bottom Sheet',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle button tap
//               },
//               child: Text('Button'),
//             ),
          
//             SizedBox(height: 10),
//             Text('Other content goes here...'),
           

            
//           ],
//         ),
//       ),
//     );
//   }
// }
// //       );
// //   }
// // }
    
     
   import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:hopehub/user/giverat.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
      bottom: PreferredSize(preferredSize:Size.fromHeight(20), child: Divider()),
        toolbarHeight: 80,
        leading: Center(child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(onPressed: (){
           
            showDialog(
              
              context: context, builder: (context)=>AlertDialog(actions: [
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.amber,), onRatingUpdate: (rating){
                  print(rating);
                }),
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("Submit"))
            ],
            title: Text("Enter Your Rating",style: GoogleFonts.inknutAntiqua(fontSize:20),),
            

            
            
            
            
            )
            
            );
            
          },
           icon: Icon(Icons.cancel,color: Colors.white,size: 40,),)
        )),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              CircleAvatar(radius: 30,backgroundColor: Colors.white,child: CircleAvatar(radius: 25,backgroundImage: AssetImage("assets/Doctor.jpg"),),),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 100,left: 10),
                    child: Text("Dayana",style: GoogleFonts.inknutAntiqua(color:Colors.white,fontSize:15),),
                  ),
                  Text("Last seen today 1 PM",style: GoogleFonts.inknutAntiqua(color:Colors.white,fontSize:15),)
                ],
              )
            ],
          )
        ),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.only(right: 100),
        //     // child: Icon(Icons.chat_outlined),
        //   ),Text("Dayana",style: GoogleFonts.inknutAntiqua(color:Colors.white,fontSize:20),)
        //  ],

      ),
      backgroundColor: Colors.grey[850],
      body:SingleChildScrollView(child:  Column(children: [
        Row(
          children: [
            Container(height: 40,width: 200,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),border: Border.all(width: 1,color: Colors.white), color: Colors.grey[800],),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text("Hello",style: GoogleFonts.inknutAntiqua(color:Colors.white,fontSize:15),),
            )
            ),
          ],
        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Container(height: 40,width: 200,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),border: Border.all(width: 1,color: Colors.white), color: Colors.grey[800],),
          child: Padding(
            padding: const EdgeInsets.only(top: 10,left: 10),
            child: Text("Hello",style: GoogleFonts.inknutAntiqua(color:Colors.white,fontSize:15),),
          )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 470),
          child: Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),border: Border.all(width: 1,color: Colors.white), color: Colors.grey[800],),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
  children: [
    Icon(
      Icons.keyboard,
      color: Colors.white,
      size: 30.0, // Explicitly use double for clarity
    ),
    const SizedBox(width: 10.0), // Add spacing between icon and text field
    Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Message",
          hintStyle: GoogleFonts.inknutAntiqua(color: Colors.white),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Icon(Icons.camera_alt,color: Colors.white,size: 30,),
    ),
    
  ],
),

            ),
          ),
        )
        
        
      ],),)
    );
  }
}