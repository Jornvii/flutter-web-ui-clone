import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FooterColumn(
                title: 'About Flutter',
                items: ['Careers', 'News', 'Brand', 'Culture'],
              ),
              FooterColumn(
                title: 'Learn Flutter',
                items: ['Learning Journey', 'Codelabs', 'Samples', 'Cookbook'],
              ),
              FooterColumn(
                title: 'Multi-Platform',
                items: ['Mobile', 'Web', 'Desktop', 'Embedded', 'iOS'],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.youtube),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.twitter),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Except as otherwise noted, this work is licensed under a Creative Commons Attribution 4.0 International License, and code samples are licensed under the BSD License.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const FooterColumn({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 10),
        ...items.map((item) => Text(item, style: const TextStyle(fontSize: 14))),
      ],
    );
  }
}