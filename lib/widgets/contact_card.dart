import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String imageUri;
  const ContactCard({
    Key? key,
    required this.imageUri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Image.asset(
        imageUri,
        color: Theme.of(context).highlightColor,
      ),
    );
  }
}
