import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  final List<Map<String, String>> item = [
    {
      "Title": "CARTIER EYEWEAR",
      "Subtitle": "400",
      "Image": "assets/img1.jpeg",
    },
    {"Title": "MIU MIU", "Subtitle": "362", "Image": "assets/img2.jpeg"},
    {"Title": "PRADA EYEWEAR", "Subtitle": "520", "Image": "assets/img3.jpeg"},
    {"Title": "OLIVER PEOPLES", "Subtitle": "390", "Image": "assets/img4.jpeg"},
    {"Title": "LOEWE EYEWEAR", "Subtitle": "640", "Image": "assets/img5.jpeg"},
    {"Title": "CAT EYEWEAR", "Subtitle": "740", "Image": "assets/img7.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 237),

      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  SizedBox(
                    width: 400,
                    height: 100,
                    child: Card(
                      color: Color.fromARGB(255, 250, 246, 226),
                      child: ListTile(
                        title: Text(
                          item[index]['Title']!,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),fontStyle: FontStyle.italic
                          ),
                        ),
                        subtitle: Text(
                          '\$${item[index]['Subtitle']!}',
                          style: TextStyle(color: Colors.black),
                        ),
                        leading: Image.asset(item[index]["Image"]!,width: 160),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
