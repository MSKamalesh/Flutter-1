import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelHomePage(),
    );
  }
}

class TravelHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I am , Kamalesh M S👋',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Explore the world',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/placeholder.jpg'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search places',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular places', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('View all', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Most Viewed'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Nearby'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Latest'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[200]),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 270,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: PlaceCard(
                    key: UniqueKey(),
                    imagePath: 'assets/fujimount.jpg',
                    title: 'Mount Fuji, Tokyo',
                    location: 'Tokyo, Japan',
                    rating: 4.8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: PlaceCard(
                    key: UniqueKey(),
                    imagePath: 'assets/andes.jpg',
                    title: 'Andes, South',
                    location: 'South, America',
                    rating: 4.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // Footer moved here so it sticks to bottom
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, color: Colors.red),
            Icon(Icons.access_time),
            Icon(Icons.favorite_border),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final double rating;

  PlaceCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                imagePath,
                height: 160,
                width: 160,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(location, style: TextStyle(color: Colors.grey)),
                  Row(
                    children: [
                      Icon(Icons.star, size: 16, color: Colors.yellow),
                      SizedBox(width: 4),
                      Text(rating.toString()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
