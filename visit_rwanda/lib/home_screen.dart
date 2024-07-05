import 'package:flutter/material.dart';
import 'package:visit_rwanda/explore_page.dart';
import 'package:visit_rwanda/trip_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Define the initial route
      routes: {
        '/': (context) => const HomeScreen(), // HomeScreen route
        '/explore': (context) => const ExplorePage(), // ExplorePage route
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    ExplorePage(),
    TripPage(), // Include ExplorePage directly in the list
    Center(
        child: Text('Profile Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Text('A'),
          ),
        ],
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            activeIcon: Icon(Icons.bookmark),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SearchBar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child:
                    const Text('See all', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
          const Text(
            'Get discount on all-time favorite\ndestinations',
            style:
                TextStyle(fontSize: 16, color: Color.fromARGB(255, 15, 15, 15)),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              DestinationCard(
                title: 'Cabin',
                weeks: '3 weeks',
                discount: '10%',
                description:
                    'Explore GOA with amazing discounts, book your adventure today!',
                imageUrl: 'https://via.placeholder.com/150',
              ),
              SizedBox(height: 10, width: 10),
              DestinationCard(
                title: 'Mountain Trek',
                weeks: '6 weeks',
                discount: '25%',
                description:
                    'Explore Andaman and Nicobar islands with amazing discounts, book your adventure today!',
                imageUrl: 'https://via.placeholder.com/150',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'All time favorite',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child:
                    const Text('See all', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
          const Text(
            'Wanna go on a trip today!',
            style:
                TextStyle(fontSize: 16, color: Color.fromARGB(255, 27, 26, 26)),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              DestinationCard(
                title: 'Le Marara',
                weeks: '3 weeks',
                discount: '5%',
                description:
                    'Explore the beauty of Le Marara, book your adventure today!',
                imageUrl: 'https://via.placeholder.com/150',
              ),
              SizedBox(width: 10),
              DestinationCard(
                title: 'Cleo Hotel',
                weeks: '4 weeks',
                discount: '15%',
                description:
                    'Enjoy a luxurious stay at Cleo Hotel, book your adventure today!',
                imageUrl: 'https://via.placeholder.com/150',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 211, 207, 207),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String title;
  final String weeks;
  final String discount;
  final String description;
  final String imageUrl;

  const DestinationCard({
    super.key,
    required this.title,
    required this.weeks,
    required this.discount,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                discount,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  weeks,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
