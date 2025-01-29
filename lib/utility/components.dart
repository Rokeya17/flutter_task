import 'package:flutter/material.dart';
import 'package:flutter_task/utility/app_assets/app_assets.dart';
import 'package:glossy/glossy.dart';

import 'app_colors.dart';

Widget profileHeader() {
  return Stack(
    children: [
      Align(
        alignment: Alignment.bottomRight,
        child: Image.asset('assets/images/circle.png', height: 300),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12, top: 12),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppImages.profileLogo),
                  radius: 24,
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello,", style: AppTextStyles.subheading),
                    Text("Bruno Mars", style: AppTextStyles.heading),
                    Row(
                      children: [
                        Icon(Icons.battery_3_bar_outlined,
                            color: AppColors.primary, size: 16),
                        Text(" 80% ", style: AppTextStyles.subheading),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.circle, color: AppColors.primary, size: 11),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Connected",
                          style: AppTextStyles.subheading,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Column(
              children: [
                MetricRow("Heart rate", "91 bpm"),
                MetricRow("Heart rate variability", "54 msec"),
                MetricRow("Pressure", "17 relax"),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Widget MetricRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.subheading),
        Text(value, style: AppTextStyles.heading),
        const SizedBox(height: 8.0),
        Container(
          height: 2.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.transparent],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget card() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Stack(
      children: [
        Positioned(
          top: 8,
          left: 8,
          child: Image.asset(
            'assets/images/heartbeat.png',
            width: 24,
            height: 24,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            const Text("Heart Rate", style: AppTextStyles.subheading),
            const SizedBox(height: 16),
            // Center the button
            Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF6A1048),
                      Color(0xFFFF009E),
                      Color(0xFF6A1048)
                    ],
                    stops: [0.0294, 0.5422, 0.9706],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(16),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppImages.ButtonImage,
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Start",
                        style: AppTextStyles.buttonText,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ],
    ),
  );
}

Widget bottomNav() {
  return GlossyContainer(
    margin: const EdgeInsets.all(12),
    borderRadius: BorderRadius.circular(8),
    width: double.maxFinite,
    height: 82,
    padding: EdgeInsets.zero,
    child: BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Image.asset(AppImages.navButton1Image), label: "Home"),
         BottomNavigationBarItem(icon: Image.asset(AppImages.navButton2Image), label: "Activity"),
         BottomNavigationBarItem(
            icon:  Image.asset(AppImages.navButton3Image), label: "Sleep"),
         BottomNavigationBarItem(
            icon:  Image.asset(AppImages.navButton4Image), label: "My Ring"),
      ],
    ),
  );
}

//
// Widget buildBottomNav() {
//   return BottomNavigationBar(
//     // Set background color to black
//     elevation: 0, // Remove the elevation (shadow effect)
//     selectedItemColor: AppColors.primary, // Color for selected item (for example)
//     unselectedItemColor: Colors.grey, // Color for unselected items
//     items: [
//       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//       BottomNavigationBarItem(icon: Icon(Icons.add_chart), label: "Activity"),
//       BottomNavigationBarItem(icon: Icon(Icons.nightlight_outlined), label: "Sleep"),
//       BottomNavigationBarItem(icon: Icon(Icons.watch_later_outlined), label: "My Ring"),
//     ],
//   );
// }
