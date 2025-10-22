import 'package:first_wtf_app/widgets/custom_indicator.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
 
class OnboardingPage extends StatefulWidget {

  const OnboardingPage({super.key});
 
  @override

  State<OnboardingPage> createState() => _OnboardingPageState();

}
 
class _OnboardingPageState extends State<OnboardingPage> {

  int activeIndex = 0;
 
  List<OnboardingItem> items = [

    OnboardingItem(

      title: "Welcome to MediCall",

      subtitle:

          "We help you make ambulance requests for emergency and other purposes",

      asset: "assets/onboardingscr.png",

    ),

    OnboardingItem(

      title: "Get emergency medical help fast",

      subtitle:

          "Wherever you are. Need urgent help? We’ll connect you to the nearest available ambulance.",

      asset: "assets/onboardingscr.png",

    ),

    OnboardingItem(

      title: "Meet world-class respondents",

      subtitle:

          "We’ll connect you to professional emergency respondents anytime, anywhere.",

      asset: "assets/onboardingscr.png",

    ),

  ];
 
  @override

  Widget build(BuildContext context) {

    var onboardingItemToShow = items[activeIndex];
 
    return Scaffold(

      body: SafeArea(

        child: Stack(

          children: [

            // Main onboarding content

            Center(

              child: Padding(

                padding: const EdgeInsets.symmetric(horizontal: 24.0),

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,

                  crossAxisAlignment: CrossAxisAlignment.center,

                  spacing: 16,

                  children: [

                    CustomIndicator(

                      indicatorCount: items.length,

                      activeIndex: activeIndex,

                    ),

                    Image.asset(

                      onboardingItemToShow.asset,

                      width: 300,

                      height: 300,

                    ),

                    Text(

                      onboardingItemToShow.title,

                      style: GoogleFonts.aDLaMDisplay(

                        fontWeight: FontWeight.w600,

                        fontSize: 32,

                      ),

                      textAlign: TextAlign.center,

                    ),

                    Text(

                      onboardingItemToShow.subtitle,

                      style: GoogleFonts.k2d(fontSize: 16),

                      textAlign: TextAlign.center,

                    ),

                  ],

                ),

              ),

            ),
 
            // Skip button (top-right)

            Positioned(

              right: 16,

              top: 16,

              child: TextButton(

                onPressed: () {

                  Navigator.of(context).pushReplacementNamed("/login");

                },

                child: const Text(

                  "Skip",

                  style: TextStyle(

                    fontSize: 16,

                    fontWeight: FontWeight.w500,

                    color: Colors.blue,

                  ),

                ),

              ),

            ),

          ],

        ),

      ),
 
      // Bottom navigation

      bottomNavigationBar: Padding(

        padding: const EdgeInsets.all(16.0),

        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            activeIndex <= 0

                ? const SizedBox(height: 0, width: 0)

                : ElevatedButton(

                    onPressed: () {

                      setState(() {

                        activeIndex--;

                      });

                    },

                    child: const Text("Back"),

                  ),

            ElevatedButton(

              onPressed: () {

                if (activeIndex < items.length - 1) {

                  setState(() {

                    activeIndex++;

                  });

                } else {

                  Navigator.of(context).pushReplacementNamed("/login");

                }

              },

              child: const Text("Next"),

            ),

          ],

        ),

      ),

    );

  }

}
 
class OnboardingItem {

  final String title;

  final String subtitle;

  final String asset;
 
  OnboardingItem({

    required this.title,

    required this.subtitle,

    required this.asset,

  });

}

 