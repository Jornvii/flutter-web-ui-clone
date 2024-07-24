import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final String title;
  final List<String> items;

  const MenuItem({super.key, required this.title, required this.items});

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: PopupMenuButton<String>(
          onSelected: (String value) {
            // Handle menu item selection
          },
          itemBuilder: (BuildContext context) {
            return widget.items.map((String item) {
              return PopupMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8.0),
            decoration: BoxDecoration(
              color: _isHovering ? Color.fromARGB(57, 19, 19, 255) : Color.fromARGB(0, 255, 255, 255),
              borderRadius: BorderRadius.circular(15),
              // boxShadow: _isHovering
              //     ? [
              //         const BoxShadow(
              //           color: Colors.black26,
              //           blurRadius: 2.0,
              //           spreadRadius: 2.0,
              //           offset: Offset(2.0, 2.0),
              //         ),
              //       ]
              //     : [],
            ),
            child: Center(
              child: Text(
                widget.title,
                style: TextStyle(
                  color: _isHovering ? Colors.white : const Color.fromARGB(179, 0, 0, 0),
                  fontWeight: _isHovering ? FontWeight.bold : FontWeight.w900,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}



// jbjhfhsdjfndsjnfcdsklnckjldsncvjkl 


