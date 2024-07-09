import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExplorePage(),
    );
  }
}

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBar(),
              const SizedBox(height: 20),
              const Text(
                'Explore Cities',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Explore different citys in your budget',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CityCard(
                        image: 'assets/images/kigali.jpeg', name: 'Kigali'),
                    CityCard(
                        image: 'assets/images/musanze.jpeg', name: 'Musanze'),
                    CityCard(
                        image: 'assets/images/rubavu.jpeg', name: 'Rubavu'),
                    CityCard(
                        image: 'assets/images/kibeho.jpeg', name: 'Kibeho'),
                    CityCard(
                        image: 'assets/images/muhanga.jpeg', name: 'Muhanga'),
                    CityCard(
                        image: 'assets/images/rwesero.jpeg', name: 'Rwesero'),
                    CityCard(
                        image: 'assets/images/kamembe.jpg', name: 'Kamembe'),
                    CityCard(
                        image: 'assets/images/vision_city.jpg',
                        name: 'Vision City'),
                    CityCard(
                        image: 'assets/images/rubavu.jpeg', name: 'Rubavu'),
                    CityCard(
                        image: 'assets/images/kibeho.jpeg', name: 'Kibeho'),
                    CityCard(
                        image: 'assets/images/muhanga.jpeg', name: 'Muhanga'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Adventure',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const Text(
                'Different adventure trips!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: const [
                  AdventureCard(
                    discount: '20%',
                    image: 'assets/images/hiking.jpeg',
                    title: 'Hiking',
                    duration: '4 weeks',
                  ),
                  AdventureCard(
                    discount: '30%',
                    image: 'assets/images/backpack.jpg',
                    title: 'Backpack',
                    duration: '3 Months',
                  ),
                  AdventureCard(
                    discount: '8%',
                    image: 'assets/images/hot-airballon.jpeg',
                    title: 'Hot Air Balloon',
                    duration: '2 weeks',
                  ),
                  AdventureCard(
                    discount: '5%',
                    image: 'assets/images/kayaking.jpeg',
                    title: 'Kayaking',
                    duration: '1 week',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final String image;
  final String name;

  const CityCard({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              image,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class AdventureCard extends StatelessWidget {
  final String discount;
  final String image;
  final String title;
  final String duration;

  const AdventureCard({
    super.key,
    required this.discount,
    required this.image,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  color: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: Text(
                    discount,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            duration,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          )
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
