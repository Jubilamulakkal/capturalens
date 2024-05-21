import 'package:captura/home/Booking.dart';
import 'package:captura/home/profilepht.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("image/wedding5.avif"),
              Padding(
                padding: const EdgeInsets.only(top: 170, left: 120),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("image/wdngphtgrpr.jpg"),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 290,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Jyothika",style: GoogleFonts.inriaSerif(color:Colors.black),),
                      Icon(Icons.location_on_sharp),
                      Text("kochi",style: GoogleFonts.inriaSerif(color:Colors.black),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Booking()));
                            },
                            child: Text(
                              'Book now',
                              style: GoogleFonts.inriaSerif(
                                  color: Colors.white, fontSize: 11),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profilepht()));
                            },
                            child: Text(
                              'View profile',
                              style: GoogleFonts.inriaSerif(
                                  color: Colors.white, fontSize: 11),
                            )),
                      ],
                    ),
                  ),
                    Container(
                    height: 200,
                    width: 320,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color:Colors.grey ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 170),
                        child: Row(
                        children: [
                          Icon(Icons.star_outlined,color: Colors.amber,),
                          Text("4.1",style:GoogleFonts.inriaSerif(color:Colors.white))
                        ],
                                            ),
                      )],
                  ),
                   
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 150),
                     child: RatingBar.builder(itemSize: 25,
                                 initialRating: 0,
                                 minRating: 1,
                                 direction: Axis.horizontal,
                                 allowHalfRating: true,
                                 itemCount: 5,
                                 itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                 itemBuilder: (context, _) => Icon(
                                   Icons.star,
                                   color: Colors.amber,
                                 ),
                                 onRatingUpdate: (rating) {
                                   print(rating);
                                 },
                               ),
                   ),
                  
                  
                ],
                
              ),
              
             
            ],
            
          )
        ],
        // Container(
        //   height: 250,
        //   width: double.infinity,
        //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/wedding5.avif'),fit: BoxFit.cover)),
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 110),
        //     // child: CircleAvatar(radius: 50,
        //     //   backgroundImage: AssetImage('image/wdngphtgrpr.jpg'),),
        //     // child: Padding(
        //     //   padding: const EdgeInsets.only(top: 80,left: 50),
        //     //   child: CircleAvatar(radius: 50,
        //     //                   backgroundImage: AssetImage('image/wdngphtgrpr.jpg'),),
        //     // ),
        //   ),

        // ),

        // SizedBox(
        //   height: 50,
        // ),

        // SizedBox(
        //   height: 30,
        //   width: 100,
        //   child: Row(
        //     children: [
        //       ElevatedButton(style: ButtonStyle(
        //         shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
        //         ),
        //         backgroundColor: MaterialStatePropertyAll(Colors.black)
        //       ),
        //         onPressed: (){
        //           Navigator.push(context, MaterialPageRoute(builder: (context)=>Booking()));
        //         }, child: Text('Book now',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:11),)),

        //     ],
        //   ),
        // ),

        // Expanded(child: ListView.builder(itemCount: 6,
        // itemBuilder: (context, index) {
        //   return Container(
        //     height: 100,
        //     width: 200,
        //     color: Colors.blue,
        //   );

        // },
        // ),
        // ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
