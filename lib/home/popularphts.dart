import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: 
      IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      
      backgroundColor: Colors.white,
      title: Title(color: Colors.black, child: Text('Popular photos',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:20),)),
      ),
      
      body:
      SingleChildScrollView(
        child: 
         Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
            child: Container(
              height: 200,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                 color: Colors.blue,
              ),
             
            ),
          ),
         Row(
           children: [
             Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('michale',style: GoogleFonts.inriaSerif(color:Colors.black),),
              ),
              
             ),
             SizedBox(
              width: 240,
             ),
             Align(
              alignment: Alignment.topRight,
              child: LikeButton(
            likeBuilder: (bool isLiked) {
              return Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.grey,
                size: 30,
              );
            },
            onTap: (bool isLiked) {
              return Future.value(!isLiked);
            },
          ),
             )
           ],
         ), 
         SizedBox(
          height: 10,
         ),
          
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
            child: Container(
              height: 200,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                color: Colors.blue,
              ),
             
            ),
          ),
         Row(
           children: [
             Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('michale',style: GoogleFonts.inriaSerif(color:Colors.black),),
              ),
              
             ),
             SizedBox(
              width: 240,
             ),
             Align(
              alignment: Alignment.topRight,
              child: LikeButton(
            likeBuilder: (bool isLiked) {
              return Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.grey,
                size: 30,
              );
            },
            onTap: (bool isLiked) {
              return Future.value(!isLiked);
            },
          ),
             )
           ],
         ), 
         SizedBox(
          height: 10,
         ),
 
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
            child: Container(
              height: 200,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                 color: Colors.blue,
              ),
             
            ),
          ),
         Row(
           children: [
             Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('michale',style: GoogleFonts.inriaSerif(color:Colors.black),),
              ),
              
             ),
             SizedBox(
              width: 240,
             ),
             Align(
              alignment: Alignment.topRight,
              child:LikeButton(
            likeBuilder: (bool isLiked) {
              return Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.grey,
                size: 30,
              );
            },
            onTap: (bool isLiked) {
              return Future.value(!isLiked);
            },
          ),
             )
           ],
         ), 
         SizedBox(
          height: 10,
         ),
          
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
            child: Container(
              height: 200,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                color: Colors.blue,
              ),
             
            ),
          ),
         Row(
           children: [
             Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('michale',style: GoogleFonts.inriaSerif(color:Colors.black),),
              ),
              
             ),
             SizedBox(
              width: 240,
             ),
             Align(
              alignment: Alignment.topRight,
              child: LikeButton(
            likeBuilder: (bool isLiked) {
              return Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.grey,
                size: 30,
              );
            },
            onTap: (bool isLiked) {
              return Future.value(!isLiked);
            },
          ),
             )
           ],
         ), 
         SizedBox(
          height: 10,
         ),
        ],
        
      ),
      )
     ); 
              }
         
         
    
  }
