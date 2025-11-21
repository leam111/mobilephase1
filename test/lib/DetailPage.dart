import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const DetailsPage({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title Detail'),
        centerTitle: true,
        backgroundColor: Color(0xFFF2F2F7),
      ),

      body: Center(child: Column(children: [Text(subtitle ,style: TextStyle(fontSize: 30 , color: Colors.black),),SizedBox(height: 20,),Image.asset(image,width: 400,height: 400,)])),
    );
  }
}
