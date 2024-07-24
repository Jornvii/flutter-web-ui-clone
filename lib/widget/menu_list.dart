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
  int _hoveredItemIndex = -1; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,), 
      child: MouseRegion(
        onEnter: (_) => _onHover(true),
        onExit: (_) => _onHover(false),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: PopupMenuButton<String>(
            onSelected: (String value) {},
            itemBuilder: (BuildContext context) {
              return List.generate(widget.items.length, (index) {
                final item = widget.items[index];
                return PopupMenuItem<String>(
                  value: item,
                  child: MouseRegion(
                    onEnter: (_) => _onItemHover(true, index),
                    onExit: (_) => _onItemHover(false, index),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),

                        child: Text(
                          item,
                          style: TextStyle(
                            color: _hoveredItemIndex == index
                                ? Colors.white
                                : Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: _isHovering
                    ? const Color.fromARGB(57, 19, 255, 110)
                    : const Color.fromARGB(0, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: _isHovering
                        ? Colors.white
                        : const Color.fromARGB(179, 0, 0, 0),
                    fontWeight: _isHovering ? FontWeight.bold : FontWeight.w900,
                    fontSize: 16,
                  ),
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

  void _onItemHover(bool isHovering, int index) {
    setState(() {
      _hoveredItemIndex = isHovering ? index : -1;
    });
  }
}
