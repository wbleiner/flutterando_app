import 'package:flutter/material.dart';

class ButtonTinder extends StatelessWidget {
  final String image;
  final String buttonText;
  const ButtonTinder({Key? key, required this.image, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            scale: 15,
            color: Colors.white,
          ),
          Text(
            buttonText,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
