import 'package:flutter/material.dart';
import 'package:flutter_task/utility/app_assets/app_assets.dart';
import 'package:flutter_task/utility/health_card.dart';

import '../../utility/app_colors.dart';
import '../../utility/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNav(),
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF291124),
                Color(0xFF000000),
              ],
              stops: [0.2, 1.0], // Adjust the spread of colors
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                profileHeader(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: HeartRateCard(
                              title: 'Heart Rate',
                              value: '91 bpm',
                              image: AppImages.Line1Logo,
                              onPressed: () {},
                              appImage: AppImages.heartLogo,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: HeartRateCard(
                              title: 'Heart rate variability',
                              value: '120/80 mmHg',
                              image: AppImages.Line3Logo,
                              onPressed: () {},
                              appImage: AppImages.activity1Logo,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Expanded(
                            child: HeartRateCard(
                              title: 'Pressure',
                              value: '54 msec',
                              image: AppImages.Line2Logo,
                              onPressed: () {
                                // Define the button action here
                              },
                              appImage: AppImages.activity2Logo,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: HeartRateCard(
                              title: 'Blood oxyzen',
                              value: '98.6 °F',
                              image: AppImages.Line4Logo,
                              onPressed: () {
                                // Define the button action here
                              },
                              appImage: AppImages.activity3Logo,
                            ),
                          ),
                        ],
                      ),

                      // buildBottomNav(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
