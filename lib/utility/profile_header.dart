import 'package:flutter/material.dart';
import 'app_assets/app_assets.dart';
import 'app_colors.dart';

class ProfileHeaderWithMetrics extends StatelessWidget {
  final String name;
  final String batteryStatus;
  final String connectionStatus;
  final List<Map<String, String>> metrics;

  const ProfileHeaderWithMetrics({
    required this.name,
    required this.batteryStatus,
    required this.connectionStatus,
    required this.metrics,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(AppImages.profileLogo),
            radius: 24,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello,", style: AppTextStyles.subheading),
              Text(name, style: AppTextStyles.heading),
              Row(
                children: [
                  Icon(Icons.battery_3_bar_outlined, color: AppColors.primary, size: 16),
                  Text(" $batteryStatus ", style: AppTextStyles.subheading),
                  const SizedBox(width: 5),
                  Icon(Icons.circle, color: AppColors.primary, size: 11),
                  const SizedBox(width: 5),
                  Text(connectionStatus, style: AppTextStyles.subheading),
                ],
              ),
            ],
          ),
          const Spacer(),
          Image.asset(AppImages.appLogo, height: 100),
        ],
      ),
    );
  }
}