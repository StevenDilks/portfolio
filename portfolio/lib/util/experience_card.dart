import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/util/font_size_controller.dart';

class ExperienceCard extends StatelessWidget {
  final String title;
  final String company;
  final String period;
  final List<String> responsibilities;
  final FontSizeController controller;

  const ExperienceCard({
    super.key,
    required this.title,
    required this.company,
    required this.period,
    required this.responsibilities,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Text(
                textScaler: TextScaler.linear(controller.header.value),
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F2937),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Obx(
              () => Text(
                textScaler: TextScaler.linear(controller.subtext.value),
                '$company | $period',
                style: const TextStyle(
                  color: Color(0xFF3B82F6),
                ),
              ),
            ),
            const SizedBox(height: 8),
            ...responsibilities.map(
              (responsibility) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Obx(
                        () => Text(
                          '• $responsibility',
                          textScaler:
                              TextScaler.linear(controller.subtext.value),
                          style: const TextStyle(
                            color: Color(0xFF4B5563),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
