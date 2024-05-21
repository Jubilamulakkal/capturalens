
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class chatting extends StatefulWidget {
  const chatting({super.key});

  @override
  State<chatting> createState() => _chattingState();
}

class _chattingState extends State<chatting> {
  
  final List<String>_messages=[];
  final TextEditingController _controller=TextEditingController();
  void _sendMessage(){
    if(_controller.text.isEmpty)return;
    setState(() {
      _messages.add(_controller.text);
      _controller.clear();
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.grey,radius: 15,),
            SizedBox(
              width: 10,
            ),
            Text('Jyothika',style: GoogleFonts.inriaSerif(color:Colors.black),),

          ],
        ),
        
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Delete Conversation',style: GoogleFonts.inriaSerif(color:Colors.black),),
                  value: 'delete',
                ),
                PopupMenuItem(
                  child: Text('Block User',style: GoogleFonts.inriaSerif(color:Colors.black),),
                  value: 'block',
                ),
                PopupMenuItem(
                  child: Text('View Profile',style: GoogleFonts.inriaSerif(color:Colors.black),),
                  value: 'profile',
                ),
              ];
            },
            onSelected: (String value) {
              if (value == 'delete') {
                // Handle delete conversation action
              } else if (value == 'block') {
                // Handle block user action
              }
              else if(value=='profile'){
                //handle profile
              }
            },
          ),
        ],
         
),
body: Column(
         children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: ChatBubble(
                    message: _messages[index],
                    isMe: true,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration:
                    InputDecoration(
                      
                      labelText: 'Send a message...',
                      border: OutlineInputBorder(),
                    ),
                    
                  ),
                ),
 IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  ChatBubble({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: isMe ? Colors.blueAccent : Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
  child: Text(
          message,
          style: TextStyle(color: isMe ? Colors.white : Colors.black),
        ),
     ),
);
}
}
    
    
  