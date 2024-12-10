import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:portfolio/util/experience_card.dart';
import 'package:portfolio/util/font_size_controller.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steven Dilks - Frontend Engineer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  ResumePage({super.key});

  final FontSizeController fontSizeController = Get.put(FontSizeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            'Steven Dilks',
            textScaler: TextScaler.linear(fontSizeController.title.value),
            style: TextStyle(color: Colors.white),
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 63, 117, 233),
                Color.fromARGB(255, 117, 164, 240),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Obx(
              () => Slider(
                value: fontSizeController.global.value,
                activeColor: Colors.white,
                inactiveColor: Colors.white,
                onChanged: (double val) {
                  fontSizeController.updateValues(val);
                },
                divisions: 20,
                min: 1.0,
                max: 9.0,
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => CircleAvatar(
                          radius: fontSizeController.global.value * 7 + 50,
                          backgroundImage: AssetImage('headshot.jpg'),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8),
                            Obx(
                              () => Text(
                                'Frontend Engineer',
                                textScaler: TextScaler.linear(
                                  fontSizeController.header.value,
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
                                  fontSizeController.subtext.value,
                                ),
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Obx(
                    () => Text(
                      'Skills',
                      textScaler: TextScaler.linear(
                        fontSizeController.header.value,
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F2937),
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 16),
                  Wrap(
                    runAlignment: WrapAlignment.spaceAround,
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      'Responsive Design',
                      'Software Development Lifecycle',
                      'Scrum',
                      'Agile',
                      'Mobile App/Website Development',
                      'Proficient Troubleshooting',
                      'Flutter',
                      'Dart',
                      'TypeScript',
                      'JavaScript',
                      'React',
                      'Angular',
                      'HTML/CSS',
                      'Java',
                      'Go',
                      'Python',
                      'C++',
                      'C#',
                      'Linux',
                      'Bash',
                      'Github',
                      'Jira',
                      'Google Admin Console',
                      'Apple Developer/TestFlight',
                      'Insomnia',
                    ]
                        .map(
                          (skill) => Chip(
                            label: Obx(
                              () => Text(
                                skill,
                                textScaler: TextScaler.linear(
                                  fontSizeController.subtext.value,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 32),
                  Obx(
                    () => Text(
                      'Experience',
                      textScaler: TextScaler.linear(
                        fontSizeController.header.value,
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F2937),
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 16),
                  ExperienceCard(
                    controller: fontSizeController,
                    title: 'Software Engineer',
                    company: 'Sonavi Labs, Inc. - Remote',
                    period: 'May 2023 - August 2024',
                    responsibilities: [
                      'Created the user-facing mobile application from scratch using the Flutter framework',
                      'Managed the application deployment and in-house testing process for Android and iOS',
                      'Gained experience leading and teaching a new team member',
                      'Implemented responsive designs to ensure optimal user experience across various devices and screen sizes',
                      'Optimized frontend performance through efficient coding practices and asset optimization',
                      'Worked with UX Engineers to adhere to visual standards',
                      'Worked with Backend Engineers to implement new APIs abd troubleshoot existing ones',
                      'Taught and mentored Software Engineer intern',
                    ],
                  ),
                  const SizedBox(height: 16),
                  ExperienceCard(
                    controller: fontSizeController,
                    title: 'Software Engineer',
                    company: 'MindStand Technologies, Inc. - Hybrid',
                    period: 'Aug 2018 - Aug 2022',
                    responsibilities: [
                      'Wrote the company website from scratch using the Angular 7 framework',
                      'Wrote the user dashboard website from scratch using the React framework',
                      'Wrote REST APIs to be used in conjunction with the user dashboard website',
                    ],
                  ),
                  const SizedBox(height: 32),
                  Obx(
                    () => Text(
                      'Education',
                      textScaler: TextScaler.linear(
                        fontSizeController.header.value,
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F2937),
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 16),
                  ExperienceCard(
                    controller: fontSizeController,
                    title:
                        'Bachelor of Science in Computer Science - In Progress',
                    company: 'Western Governers University',
                    period: '2022 - Present',
                    responsibilities: [
                      'Relevant coursework: Data Structures, Algorithms, Web Development, Database Systems, Java',
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: const Color(0xFF1F2937),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => launchUrl(
                    Uri.parse('mailto:steven@dilks.com'),
                  ),
                  child: Obx(
                    () => Icon(
                      size: fontSizeController.icon.value,
                      Icons.email_outlined,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: InkWell(
                    onTap: () => launchUrl(
                      Uri.parse(
                        'https://www.linkedin.com/in/steven-dilks24/',
                      ),
                    ),
                    child: Obx(
                      () => Icon(
                        size: fontSizeController.icon.value,
                        FontAwesome5.linkedin,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => launchUrl(
                    Uri.parse('https://github.com/StevenDilks'),
                  ),
                  child: Obx(
                    () => Icon(
                      size: fontSizeController.icon.value,
                      FontAwesome5.github,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
