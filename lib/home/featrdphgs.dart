import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        
        
        title: Text('Featured Photographers',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:15),),
      ),
      
body: SingleChildScrollView(
  child:Column(
children: [
   Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
         child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Container(
                    height:120 ,
                    width: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      color: Colors.blue,
                    ),
                    
                  
                    ),
                    SizedBox(
                      width: 10,
                    ),

                Container(
                    height:120 ,
                    width: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      color: Colors.blue,
                    ),
                    
                  
                 ),
                ],
                
              ),
            ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 135,left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 135,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      color: Colors.blue),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                     height: 120, 
                     width: 135,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                     color: Colors.blue),
                    )
                  ],
                  
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height:30 ,
                width: 80,
                child: ElevatedButton(style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.circular(17) )),
                  backgroundColor:MaterialStatePropertyAll(Colors.black) 
                ),
                  onPressed: (){}, child: Text('view',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:12),)),
              )
            ],
          )
          ],
        ),
        height: 400,
        width: 300,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10) ,color: Colors.white,boxShadow: [
         BoxShadow(color: Colors.grey.withOpacity(0.5),
         spreadRadius: 5,
         blurRadius: 7,
         offset: Offset(6, 6)
         ) 
        ]
        ),
      ),
    ),
  ),
  
   Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Container(
                    height:120 ,
                    width: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      color: Colors.blue,
                    ),
                    
                  
                    ),
                    SizedBox(
                      width: 10,
                    ),

                Container(
                    height:120 ,
                    width: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      color: Colors.blue,
                    ),
                    
                  
                 ),
                ],
                
              ),
            ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 135,left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 135,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      color: Colors.blue),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                     height: 120, 
                     width: 135,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                     color: Colors.blue),
                    )
                  ],
                  
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height:30 ,
                width: 80,
                child: ElevatedButton(style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.circular(17) )),
                  backgroundColor:MaterialStatePropertyAll(Colors.black) 
                ),
                  onPressed: (){}, child: Text('view',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:12),)),
              )
            ],
          )
          ],
        ),
        height: 400,
        width: 300,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10) ,color: Colors.white,boxShadow: [
         BoxShadow(color: Colors.grey.withOpacity(0.5),
         spreadRadius: 5,
         blurRadius: 7,
         offset: Offset(6, 6)
         ) 
        ],
        
        ),
      ),
    ),
    
  ),
  
   Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Container(
           child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Container(
                    height:120 ,
                    width: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      color: Colors.blue,
                    ),
                    
                  
                    ),
                    SizedBox(
                      width: 10,
                    ),

                Container(
                    height:120 ,
                    width: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      color: Colors.blue,
                    ),
                    
                  
                 ),
                ],
                
              ),
            ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 135,left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 135,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                      color: Colors.blue),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                     height: 120, 
                     width: 135,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('image/popimg4.jpg'),fit: BoxFit.cover),
                     color: Colors.blue),
                    )
                  ],
                  
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height:30 ,
                width: 80,
                child: ElevatedButton(style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.circular(17) )),
                  backgroundColor:MaterialStatePropertyAll(Colors.black) 
                ),
                  onPressed: (){}, child: Text('view',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:12),)),
              )
            ],
          )
          ],
        ),
          height: 400,
          width: 300,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10) ,color: Colors.white,boxShadow: [
           BoxShadow(color: Colors.grey.withOpacity(0.5),
           spreadRadius: 5,
           blurRadius: 7,
           offset: Offset(6, 6)
           ) 
          ]
          ),
        ),
      ),
    ),
  ),
],



  ) ,
  
  
  
),

    );
    
  }
}