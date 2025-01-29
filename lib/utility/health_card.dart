import 'package:flutter/material.dart';
import 'package:flutter_task/utility/app_colors.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class HeartRateCard extends StatefulWidget {
  final String appImage;
  final String title;
  final String value;
  final String image;
  final VoidCallback onPressed;

  const HeartRateCard({
    super.key,
    required this.appImage,
    required this.title,
    required this.value,
    required this.image,
    required this.onPressed,
  });

  @override
  State<HeartRateCard> createState() => _HeartRateCardState();
}

class _HeartRateCardState extends State<HeartRateCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(8),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 8,
                  left: 8,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          widget.appImage,
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Text(
                        widget.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: AppTextStyles.subheading,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 46),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        widget.value,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Image.asset(
                      widget.image,
                      width: 105,
                      height: 60,
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF6A1048),
                                Color(0xFFFF009E),
                                Color(0xFF6A1048),
                              ],
                              stops: [0.0294, 0.5422, 0.9706],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            width: 4,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: ElevatedButton(
                              onPressed: widget.onPressed,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Text("Start",
                                    style: AppTextStyles.buttonText),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
