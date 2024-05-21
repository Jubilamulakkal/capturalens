 import 'package:flutter/material.dart';

class eg extends StatefulWidget {
  const eg({super.key});

  @override
  State<eg> createState() => _egState();
}

class _egState extends State<eg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rathika',
  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Text('5.0'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('India'),
              Text('View profile'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Book Now'),
              ),
            ],
    ),
        ]
        )
      )
        );
        }
  }