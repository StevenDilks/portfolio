import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * .15,
              color: Theme.of(context).colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: DefaultTextStyle.merge(
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Steven S. Dilks',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaler: TextScaler.linear(1.5),
                      ),
                      InkWell(
                        onTap: () => launchUrl(
                          Uri.parse('mailto:steven@dilks.com'),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('steven@dilks.com'),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('301.676.3332'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.pin_drop_outlined,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Greenville, SC'),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () => launchUrl(
                          Uri.parse(
                            'https://www.linkedin.com/in/steven-dilks24/',
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesome5.linkedin,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('linkedin.com/in/steven-dilks24'),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => launchUrl(
                          Uri.parse('https://github.com/StevenDilks'),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              FontAwesome5.github,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'github.com/StevenDilks',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Column(
              children: [
                Text('STEVEN S. DILKS'),
                Text('Anderson, South Carolina'),
                Text('Telephone: 301.676.3332 Email: steven@dilks.com'),
                Text('OBJECTIVE To obtain a position as an Software Engineer'),
                Text('SUMMARY OF QUALIFICATIONS'),
                Text(
                  'Versatile goal-oriented professional with competent software development skills',
                ),
                Text('Experienced with RESTful API development'),
                Text(
                  'Competent and experienced in Python, HTML, CSS, Bash, Angular 7 with Typescript, Java,',
                ),
                Text('C++, C#, Go'),
                Text('Proficient with common office equipment and software'),
                Text(
                  'Able to quickly adapt to evolving processes while maintaining business continuity',
                ),
                Text(
                  'Able to prioritize and multitask in rapid growth environments',
                ),
                Text('PROFESSIONAL EXPERIENCE'),
                Text(
                  'Software Engineer, Mindstand Technologies, Inc., Columbia, MD',
                ),
                Text('August 2018 – Present'),
                Text('Software Development'),
                Text(
                    '● Developed user interface from concept through prototype'),
                Text('● Developed API for primary engine'),
                Text('● Created large scale data collection and web scraping'),
                Text('● Contributed to additional projects and team success'),
                Text('COMPUTER EXPERTISE'),
                Text('Proficient with C++, Java, Go, C#'),
                Text('Experience creating RESTful APIs'),
                Text('Proficient with Github, Zenhub, and Jira'),
                Text(
                  'Proficient with Angular 7 with Typescript, Javascript and HTML',
                ),
                Text('Dynamic file creation of JSON, CSS and XML'),
                Text('Proficient with Python'),
                Text('Proficient with Linux and Bash scripting'),
                Text('Comfortable with virtualization and AWS'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
