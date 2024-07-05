import 'package:flutter/material.dart';
import 'package:visit_rwanda/booking.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TripPage(),
    );
  }
}

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HDFC Bank Banner
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/bank.png',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Get instant discount with payment from',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'HDFC BANK',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Offer till 28 October',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Latest Offers Section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest Offers',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Exciting travel deals available now!',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              // Offer Cards
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BookingsPage(),
                          ),
                        );
                      },
                      child: const OfferCard(
                        imageUrl: 'assets/images/rwandair.jpeg',
                        title: 'Rwandair Flights',
                        subtitle:
                            'Grab Up to 30% OFF on International Hotels\nOffer ends in 01d:09h:58m',
                        isFavourite: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BookingsPage(),
                          ),
                        );
                      },
                      child: const OfferCard(
                        imageUrl: 'assets/images/move_cabs.png',
                        title: 'Move cabs',
                        subtitle:
                            'Sweetest Deals on Buses, Cabs & Trains\nExpires on 24 Oct',
                        isFavourite: false,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Nearest Offers Section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearest Offers',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Check offers near to you!',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              // Nearest Offer Cards
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BookingsPage(),
                          ),
                        );
                      },
                      child: const OfferCard(
                        imageUrl: 'assets/images/bowling.jpg',
                        title: 'Bowling Alley',
                        subtitle:
                            'Enjoy a fun-filled day at your nearest bowling alley.',
                        isFavourite: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BookingsPage(),
                          ),
                        );
                      },
                      child: const OfferCard(
                        imageUrl: 'assets/images/go_karting.jpeg',
                        title: 'Go Karting',
                        subtitle:
                            'Experience the thrill of go-karting near you!',
                        isFavourite: false,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final bool isFavourite;

  const OfferCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.isFavourite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
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
                  imageUrl,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  isFavourite ? Icons.favorite : Icons.favorite_border,
                  color: isFavourite ? Colors.red : Colors.grey,
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
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
