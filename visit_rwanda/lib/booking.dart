import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TripPage(), // Set TripPage as the initial route
      routes: {
        '/trip': (context) => const TripPage(),
        '/bookings': (context) => const BookingsPage(),
      },
    );
  }
}

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/bookings');
          },
          child: const Text('Go to Bookings Page'),
        ),
      ),
    );
  }
}

class BookingsPage extends StatelessWidget {
  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Available Bookings',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.black),
            onPressed: () {
              Navigator.pushNamed(context, '/trip');
            },
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            BookingCard(
              title: 'KOZO',
              time: '6:00AM',
              people: 11,
              amount: '200 USD/Indv',
              discount: '35% OFF',
            ),
            BookingCard(
              title: 'CLEO Hotel Kibuye',
              time: '9:00AM',
              people: 4,
              amount: '2500 USD/coupe',
              discount: '15% OFF',
            ),
            BookingCard(
              title: 'Kigali Universe',
              time: '12:00AM',
              people: 10,
              amount: '500 USD',
              discount: '20% OFF',
            ),
          ],
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

class BookingCard extends StatelessWidget {
  final String title;
  final String time;
  final int people;
  final String amount;
  final String discount;

  const BookingCard({
    super.key,
    required this.title,
    required this.time,
    required this.people,
    required this.amount,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text('TIME: '),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('People: '),
                  Text(people.toString()),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Text('AMT: '),
              Text(amount),
              const SizedBox(width: 8),
              Text(
                discount,
                style: const TextStyle(color: Colors.blue),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Add booking functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 1, 88, 160),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('BOOK'),
            ),
          ),
        ],
      ),
    );
  }
}
