import 'package:cobber/ride_accepted.dart';
import 'package:cobber/ride_rejected.dart';
import 'package:cobber/wallet.dart';
import 'package:flutter/material.dart';

import 'new_ride.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            // Add menu button functionality here
          },
        ),
        title: Text(
          'New Rides',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_balance_wallet),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        WalletScreen()), // Navigate to WalletScreen
              );
            },
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/caronmap.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
              left: 16.0,
              right: 16.0,
              bottom: 430.0,
              top: 330,
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 227, 227, 5),
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NewRideScreen(), // Replace with your desired screen
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.black,
                        elevation: 0,
                      ),
                      child: Text(
                        'You have a New Ride',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 20.0, // Adjust this value as needed
            child: Container(
              height: 400.0, // Adjust the height of the box as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Customer',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/defaultpic.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Icon(
                            Icons.star_outlined,
                            color: Colors.blue,
                          ),
                          Container(
                            height: 80,
                            width: 2,
                            color: Colors.grey,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),
                        const Text(
                          'John Denly',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Pickup Point',
                          style: TextStyle(
                              color: Colors.blue, fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '5967 Trophy Forks',
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '---------------------------------------',
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Pickout Point',
                          style: TextStyle(
                              color: Colors.red, fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '5967 Goldie Lane',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          '---------------------------------------',
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RideAcceptedScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                              ),
                              child: Text(
                                'Accept Ride',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),

                            SizedBox(width: 10), // Add spacing between buttons
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RideRejectedScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                              ),
                              child: Text(
                                'Reject Ride',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
