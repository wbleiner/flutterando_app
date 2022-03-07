import 'dart:math';

import 'package:flutter/material.dart';

class ExpansionTileCustom extends StatefulWidget {
  final String title;
  final String content;

  const ExpansionTileCustom({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  _ExpansionTileCustomState createState() => _ExpansionTileCustomState();
}

class _ExpansionTileCustomState extends State<ExpansionTileCustom>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _rotateIcon;
  late Animation _colorTransform;
  late Animation _expandedTile;

  void _expandTile() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void initState() {
    const duration = Duration(milliseconds: 500);
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: duration,
    );

    _rotateIcon = Tween<double>(begin: 0, end: pi).animate(
      _controller,
    );

    _colorTransform = ColorTween(begin: Colors.grey, end: Colors.blue).animate(
      _controller,
    );

    _expandedTile = Tween<double>(begin: 0, end: 1).animate(
      _controller,
    );

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.title;
    final content = widget.content;
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            onTap: () {
              _expandTile();
            },
            trailing: Transform.rotate(
              angle: _rotateIcon.value,
              child: Icon(
                Icons.expand_more,
                color: _colorTransform.value,
              ),
            ),
          ),
          Align(
            heightFactor: _expandedTile.value,
            child: Opacity(
              opacity: _expandedTile.value,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  content,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
