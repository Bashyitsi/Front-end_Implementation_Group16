// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(
      {super.key,
      required String title,
      required String description,
      required String imageUrl});

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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container for the image
          Container(
            width: double.infinity,
            height: 250, // Adjust height as needed
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://1.cdn.connectingtravel.com/dynamic-images/2000-2999/2960/2960_c=(0,2,1200,622)_w=940_h=488_pjpg.jpg?v=aa92f387'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '4N\\5D',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Colors.black54,
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'One and only Hotel - Musanze',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Check-in : 3:00 PM',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Check-out : 11:00 AM',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Date : 24 - 29 Oct',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Room : Deluxe suite with panoramic mountain views and luxurious amenities.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hotel',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1 Room * 5 Days',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '\$7899',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Taxes',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '\$999',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Resort fee',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '\$599',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                      Text(
                        '-\$799',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TOTAL',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$8799',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // Add more content as per your design
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
