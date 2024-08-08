import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'reminder.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final List<String> image = [
      'lib/images/sec.jpg',
      'lib/images/appdev.jpg',
      'lib/images/iot.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.04),
              Image.asset(
                "lib/images/logo.png",
                height: screenHeight * 0.16,
              ),
              SizedBox(height: screenHeight * 0.07),
              CarouselSlider(
                options: CarouselOptions(
                  height: screenHeight * 0.4,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                ),
                items: image.map((path) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: screenWidth * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black.withOpacity(0.2),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            path,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: screenHeight * 0.07),
              Text(
                'Let\'s Learn!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.09,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black.withOpacity(0.8),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.home,
                  size: screenWidth * 0.08,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReminderPage()),
                  );
                },
                child: Icon(
                  Icons.calendar_today,
                  size: screenWidth * 0.08,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
