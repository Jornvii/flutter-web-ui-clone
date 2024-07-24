import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../widget/footer.dart';
import '../widget/menu_list.dart';
import '../widget/tabs.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  bool _showText = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset > 0 && _showText) {
      if (mounted) {
        setState(() {
          _showText = false;
        });
      }
    } else if (_scrollController.offset <= 0 && !_showText) {
      if (mounted) {
        setState(() {
          _showText = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(93, 47, 151, 236),
        title: const Text('Flutter Web UI'),
        actions: const <Widget>[
          MenuItem(
            title: 'Multi-Platform',
            items: ['Mobile', 'Flutter on iOS', 'Web', 'Desktop', 'Embedded'],
          ),
          MenuItem(
            title: 'Development',
            items: [
              'Learn',
              'Flutter Favorites',
              'Packages',
              'AI',
              'Google Integrations',
              'Monetization',
              'Games',
              'News'
            ],
          ),
          MenuItem(
            title: 'Ecosystem',
            items: ['Community', 'Events', 'Culture', 'Consultants'],
          ),
          MenuItem(
            title: 'Showcase',
            items: [],
          ),
          MenuItem(
            title: 'Docs',
            items: [
              'What\'s new',
              'Editor support',
              'Hot reload',
              'Profiling',
              'Install Flutter',
              'DevTools',
              'Cookbook',
              'Tutorials'
            ],
          ),
        ],
      ),
      body: Container(
        color: const Color.fromRGBO(252, 252, 255, 1),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: AnimatedOpacity(
                  opacity: _showText ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 600),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: const Text(
                      "Build Modern Application with Flutter",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      Animated_images(),
                      const SizedBox(height: 30),
                      texWidget(),
                      const SizedBox(height: 40),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 600,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(143, 33, 149, 243),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TabBar(
                            controller: _tabController,
                            tabs: const [
                              Tab(text: 'Fast'),
                              Tab(text: 'Productive'),
                              Tab(text: 'Flexible'),
                            ],
                            indicator: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                  color: Colors.blueAccent, width: 2.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorPadding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 4.0),
                            labelColor: Colors.blue,
                            unselectedLabelColor:
                                const Color.fromARGB(179, 0, 0, 0),
                            labelStyle:
                                const TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 500, 
                        child: TabBarView(
                          controller: _tabController,
                          children: const [
                            TabContent(
                              imageUrl:
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/1280px-Cat_August_2010-4.jpg',
                              title: 'Fast',
                              description:
                                  'Lorem ipsum dolor sit amet. Et modi laudantium aut sint labore At enim quam sed nulla voluptatem vel neque unde aut voluptas obcaecati! Aut nesciunt dolorum aut labore repellat est explicabo inventore qui debitis esse? 33 maxime vitae et obcaecati aliquam ad architecto ipsa sed quia voluptates in blanditiis alias et animi ducimus. In similique incidunt qui rerum temporibus eos dolor ipsa.',
                            ),
                            TabContent(
                              imageUrl:
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/1280px-Cat_August_2010-4.jpg',
                              title: 'Productive',
                              description:
                                  'Lorem ipsum dolor sit amet. Et modi laudantium aut sint labore At enim quam sed nulla voluptatem vel neque unde aut voluptas obcaecati! Aut nesciunt dolorum aut labore repellat est explicabo inventore qui debitis esse? 33 maxime vitae et obcaecati aliquam ad architecto ipsa sed quia voluptates in blanditiis alias et animi ducimus. In similique incidunt qui rerum temporibus eos dolor ipsa.',
                            ),
                            TabContent(
                              imageUrl:
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/1280px-Cat_August_2010-4.jpg',
                              title: 'Flexible',
                              description:
                                  'Lorem ipsum dolor sit amet. Et modi laudantium aut sint labore At enim quam sed nulla voluptatem vel neque unde aut voluptas obcaecati! Aut nesciunt dolorum aut labore repellat est explicabo inventore qui debitis esse? 33 maxime vitae et obcaecati aliquam ad architecto ipsa sed quia voluptates in blanditiis alias et animi ducimus. In similique incidunt qui rerum temporibus eos dolor ipsa.',
                            ),
                          ],
                        ),
                      ),
                      withBTN_right(),
                      const SizedBox(
                        height: 20,
                      ),
                      withBTN_left(),
                      const SizedBox(
                        height: 20,
                      ),
                      stackWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      const Footer()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding stackWidget() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.pink, Colors.orange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Developer Story',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'See how Google Pay uses Flutter to change the world of mobile payments',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Read story →',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://miro.medium.com/v2/resize:fit:1400/1*730FQcYfyBDhVljINW-1kA.png',
                height: 400.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding withBTN_left() {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Center(
        child: Container(
          width: 1200,
          height: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeInUp(
                duration: const Duration(seconds: 2),
                child: Image.network(
                  'https://miro.medium.com/v2/resize:fit:1400/1*Z_SwdP0H8IwvI5pqZ8jtsA.gif',
                  width: 700,
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Multi-Platform',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 200,
                    width: 450,
                    child: Text(
                      "Deploy to multiple devices from a single codebase: mobile, web, desktop, and embedded devices.",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 25),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 5,
                    ),
                    child: const Text("See the target platforms"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding withBTN_right() {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Center(
        child: SizedBox(
          width: 1200,
          height: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    'Multi-Platform',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 200,
                    width: 450,
                    child: Text(
                      "Deploy to multiple devices from a single codebase: mobile, web, desktop, and embedded devices.",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 25),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 5,
                    ),
                    child: const Text("See the target platforms"),
                  )
                ],
              ),
              FadeInUp(
                duration: const Duration(seconds: 2),
                child: Image.network(
                  'https://miro.medium.com/v2/resize:fit:1400/1*Z_SwdP0H8IwvI5pqZ8jtsA.gif',
                  width: 700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container texWidget() {
    return Container(
      height: 300,
      width: 1200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(100, 33, 149, 243),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
              width: 1000,
              child: Text(
                "Flutter transforms the development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded experiences from a single codebase.",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue,
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                elevation: 5,
              ),
              child: const Text("Get started"),
            )
          ],
        ),
      ),
    );
  }

  Padding Animated_images() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.maxFinite,
        height: 700,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: FadeInUp(
                  duration: const Duration(seconds: 1),
                  child: Image.network(
                    'https://storage.googleapis.com/cms-storage-bucket/a667e994fc2f3e85de36.png',
                    width: 550,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: FadeInUp(
                  duration: const Duration(seconds: 2),
                  child: Image.network(
                    'https://miro.medium.com/v2/resize:fit:1400/1*Z_SwdP0H8IwvI5pqZ8jtsA.gif',
                    width: 700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FadeInUp(
                  duration: const Duration(seconds: 3),
                  child: Image.network(
                    'https://storage.googleapis.com/cms-storage-bucket/8faa27fce97470a6fa42.png',
                    width: 700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
