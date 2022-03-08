import 'package:flutter/material.dart';

class ImplicitAnimation1 extends StatefulWidget {
  const ImplicitAnimation1({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimation1> createState() => _ImplicitAnimation1State();
}

class _ImplicitAnimation1State extends State<ImplicitAnimation1> {
  final _duration = const Duration(seconds: 1);
  bool isAnimated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animações Implicitas 1',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AnimatedAlign(
          duration: _duration,
          alignment: isAnimated ? Alignment.topCenter : Alignment.bottomRight,
          child: GestureDetector(
            onTap: (() {
              setState(() {
                isAnimated = !isAnimated;
              });
            }),
            child: AnimatedContainer(
              duration: _duration,
              decoration: BoxDecoration(
                borderRadius: isAnimated
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(50),
                color: Colors.blue,
              ),
              width: isAnimated ? 150 : 60,
              height: 60,
            ),
          ),
        ),
      ),
    );
  }
}
