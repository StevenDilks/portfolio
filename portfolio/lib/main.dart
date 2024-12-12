import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:portfolio/util/bio_widgets.dart';
import 'package:portfolio/util/experience_card.dart';
import 'package:portfolio/util/controller.dart';
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

  final AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            'Steven Dilks',
            textScaler: TextScaler.linear(controller.title.value),
            style: TextStyle(color: Colors.white),
          ),
        ),
        centerTitle: !controller.isMobile(),
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
                value: controller.global.value,
                activeColor: Colors.white,
                inactiveColor: Colors.white,
                onChanged: (double val) {
                  controller.updateValues(val);
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
                  controller.isMobile()
                      ? Column(
                          children: [
                            circleAvatar,
                            SizedBox(width: 16),
                            Expanded(
                              child: bioText,
                            ),
                          ],
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            circleAvatar,
                            SizedBox(width: 16),
                            Expanded(
                              child: bioText,
                            ),
                          ],
                        ),
                  const SizedBox(height: 32),
                  Obx(
                    () => Text(
                      'Skills',
                      textScaler: TextScaler.linear(
                        controller.header.value,
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
                                  controller.subtext.value,
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
                        controller.header.value,
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
                    controller: controller,
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
                    controller: controller,
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
                        controller.header.value,
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
                    controller: controller,
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
                      size: controller.icon.value,
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
                        size: controller.icon.value,
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
                      size: controller.icon.value,
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
