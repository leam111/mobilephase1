import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DetailPage.dart';

class ListViewDemo extends StatefulWidget {
  ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  final List<Map<String, String>> item = [
    {"Title": "CARTIER EYEWEAR", "Subtitle": "400", "Image": "assets/img1.jpeg"},
    {"Title": "MIU MIU", "Subtitle": "362", "Image": "assets/img10.jpg"},
    {"Title": "PRADA EYEWEAR", "Subtitle": "520", "Image": "assets/img3.jpeg"},
    {"Title": "OLIVER PEOPLES", "Subtitle": "390", "Image": "assets/img11.jpg"},
    {"Title": "LOEWE EYEWEAR", "Subtitle": "640", "Image": "assets/img5.jpeg"},
    {"Title": "GUCCI BAG", "Subtitle": "740", "Image": "assets/img13.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F7),
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Shop',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          itemCount: item.length,
          separatorBuilder: (_, __) => SizedBox(height: 12),
          itemBuilder: (context, index) {
            final current = item[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      title: item[index]["Title"]!,
                      subtitle: item[index]["Subtitle"]!,
                      image: item[index]["Image"]!,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          current['Image']!,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              current['Title']!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              '\$${current['Subtitle']!}',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        CupertinoIcons.chevron_forward,
                        color: Color(0xFF8E8E93),
                        size: 20,
                      ),
                      SizedBox(width: 6),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
