import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    super.key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Image.asset(
        "assets/bg.webp",
        fit: BoxFit.fitHeight,
        width: 600,
        height: 600,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        myText,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _nameController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Something Here",
              labelText: "Name"),
        ),
      )
    ]);
  }
}
