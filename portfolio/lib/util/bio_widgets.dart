import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/util/controller.dart';

final controller = Get.find<AppController>();

final circleAvatar = Obx(
  () => CircleAvatar(
    radius: controller.global.value * 7 + 50,
    backgroundImage: AssetImage('headshot.png'),
  ),
);

final bioText = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 8),
    Obx(
      () => Text(
        'Software Engineer',
        textScaler: TextScaler.linear(
          controller.header.value,
        ),
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFF3B82F6),
        ),
      ),
    ),
    SizedBox(height: 16),
    Obx(
      () => Text(
        'Passionate and creative Software Engineer with 5 years of experience in creating software solutions.\n'
        'Recognized as a hands-on and competent team member in a fast-paced, deadline-driven environment.\n'
        'Skilled in crafting responsive, accessible, and performant web applications using modern\n'
        'frontend technologies. Committed to staying up-to-date with the latest web standards and\n'
        'best practices to deliver exceptional user interfaces.',
        textScaler: TextScaler.linear(
          controller.subtext.value,
        ),
        style: TextStyle(
          color: Color(0xFF4B5563),
        ),
      ),
    ),
  ],
);
