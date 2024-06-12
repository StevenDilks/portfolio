import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Steven S. Dilks - Portfolio and Resume',
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'data',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
