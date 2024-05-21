import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Architecture extends StatefulWidget {
  const Architecture({super.key});

  @override
  State<Architecture> createState() => _ArchitectureState();
}

class _ArchitectureState extends State<Architecture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(onPressed: (){
        
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      backgroundColor: Colors.transparent,
      title: Text('Photographers',style: GoogleFonts.inriaSerif(color:Colors.black),),
     ),
     body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/wedding4.jpg'),fit: BoxFit.cover)),
      child: Expanded(
        
        child:ListView.builder(itemCount: 4,
        itemBuilder: (context, index) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60,top: 20),
              child: Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white.withOpacity(0.8)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25,left: 10),
                        child: CircleAvatar(
                          radius: 40,backgroundImage: AssetImage('image/wdngphtgrpr.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 10),
                        child: Column(
                          children: [
                            Text('Jyothika',style: GoogleFonts.inriaSerif(color:Colors.black,fontSize:20),),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.black,),
                                Text('Kochi',style: GoogleFonts.inriaSerif(color:Colors.black),)
                              ],
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                    height: 25,
                    width: 60,
                  ),
                  ElevatedButton(style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
                    backgroundColor: MaterialStatePropertyAll(Colors.black)
                  ),
                    onPressed: (){
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>Work()));
                    }, child: Text('View work',style: GoogleFonts.inriaSerif(color:Colors.white),))
                          ],
                        ),
                      ),
                     
                      
                    ],
                  ),
                  
                  
                ],
                
              ),
                        ),
            ),]
        );  
        },),
         
        ),
     ), 

    );
  }
}