import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Alimong_Activity 1'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Pavlova Image
            Image.asset(
              'assets/pavlova.jpg',
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),

            // 2. Title and Subtitle
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova.Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    style: TextStyle(
                      fontSize: 13,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // 3. Stars and Reviews Row
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Color(0xFFF6ED55), size: 20),
                Icon(Icons.star, color: Color(0xFFF6ED55), size: 20),
                Icon(Icons.star, color: Color(0xFFF6ED55), size: 20),
                Icon(Icons.star_border, color: Color(0xFFF6ED55), size: 20),
                Icon(Icons.star_border, color: Color(0xFFF6ED55), size: 20),
                SizedBox(width: 8),
                Text(
                  '90 Reviews',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // 4. Info Icons Row
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // PREP
                Column(
                  children: [
                    Icon(Icons.timer_outlined, color: Color(0xFFF6ED55), size: 28),
                    SizedBox(height: 6),
                    Text(
                      'PREP',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                    SizedBox(height: 4),
                    Text('25 min', style: TextStyle(fontSize: 11)),
                  ],
                ),

                // COOK
                Column(
                  children: [
                    Icon(Icons.restaurant, color: Color(0xFFF6ED55), size: 28),
                    SizedBox(height: 6),
                    Text(
                      'COOK',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                    SizedBox(height: 4),
                    Text('1 gr', style: TextStyle(fontSize: 11)),
                  ],
                ),

                // FEEDS
                Column(
                  children: [
                    Icon(Icons.people, color: Color(0xFFF6ED55), size: 28),
                    SizedBox(height: 6),
                    Text(
                      'FEEDS',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                    SizedBox(height: 4),
                    Text('4-6 hrs', style: TextStyle(fontSize: 11)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

