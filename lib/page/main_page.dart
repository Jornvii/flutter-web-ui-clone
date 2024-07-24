import 'package:flutter/material.dart';

import '../widget/menu_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Web UI'),
        actions: const <Widget>[
          MenuItem(
              title: 'Multi-Platform', items: ['Item 1', 'Item 2', 'Item 3']),
          MenuItem(title: 'Development', items: ['Item 4', 'Item 5']),
          MenuItem(
              title: 'Ecosystem',
              items: ['Community', 'Events', 'Culture', 'Consultants']),
          MenuItem(title: 'Showcase', items: ['Item 6', 'Item 7']),
          MenuItem(title: 'Docs', items: ['Item 8', 'Item 9']),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}