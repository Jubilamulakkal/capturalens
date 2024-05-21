import 'package:captura/contest/earthcreature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Contest extends StatefulWidget {
  const Contest({super.key});

  @override
  State<Contest> createState() => _ContestState();
}

class _ContestState extends State<Contest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        backgroundColor: Colors.white,
        title: Text('Contests',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:15),),
      ),
      body: 
      
        
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
               decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage('image/contest1.jpg'),fit: BoxFit.fill)
               ),
               child: Column(
                 children: [
                   Align(
                    alignment: Alignment.centerLeft,
                    
                    child: Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Text('Contests',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:25),),
                    ),
                    
                    ),
                    Text('Challenges help to photographers test their skills, get recognized for their work,and win exciting prize',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:15))
                 ],
                 
               ),
               
              ),
              SizedBox(
                height: 15,
              ),
            Expanded(child: ListView.builder(itemCount: 3,
              itemBuilder: (context,index ){
              return Builder(
                builder: (context) {
                  return GestureDetector( onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Earth()));
                  },
                 child:  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                       height: 300,
                              width:20 ,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage('image/Rectangle 137.png'),fit: BoxFit.fill),
                              ),
                              
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 150,left: 15),
                                  child: Column(
                                    children: [
                                      Text("Earth's Creature                                        By CAPTURA",style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:20),),
                                      
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text('10000Rs',style: GoogleFonts.inriaSerif(color:Colors.white),)),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text('12 days left',style: GoogleFonts.inriaSerif(color:Colors.white),))
                                    ],
                                    
                                  ),
                                ),
                                
                    ),
                 ));
                }
              );}
              )
              )
          
          
              
            
                //  Column(
                //   children: [
                //     Expanded(child: ListView.builder(itemCount: 3,
                //     itemBuilder: (context, index) =>Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Container(
                        // height: 300,
                        // width:300 ,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage('image/creature.jpg'),fit: BoxFit.fill),
                        // ),
                //        child: Align
                //          (alignment: Alignment.centerLeft,
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 5),
                //           child: Text("Earth's Creatures                    By CAPTURA ",style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:25),),
                //         ),
                         
                //         ), 
                        
                //       ),
                //     ), )),
                    
                //   ],
                //  )
                //   ]
                 
                // ),
                
              
              
            //  Container(
            //   height: 300,
            //   width: 300,
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage('image/vintage.jpg'),fit: BoxFit.fill)
            //   ),
            //   child: Align
            //   (alignment: Alignment.centerLeft,
                
            //     child: Text('Vintage vibes                               By CAPTURA',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:25),)),
            //  ),
            //  SizedBox(
            //   height: 10,
            //  ),
            //  Container(
            //   height: 300,
            //   width: 300,
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage('image/architecture.jpg'),fit: BoxFit.fill)
            //   ),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text('Bold Architecture                              By CAPTURA',style: GoogleFonts.inriaSerif(color:Colors.white,fontSize:25),)),
            //  )
            ]
          )  
          );
        
      
    
  }
}