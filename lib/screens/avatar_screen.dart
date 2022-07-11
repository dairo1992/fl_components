import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avatars'), actions: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: CircleAvatar(
            child: const Text('SL'),
            backgroundColor: Colors.indigo[900],
          ),
        )
      ]),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/originals/19/73/a2/1973a2d0be554232c4e38a8b8c6fcffd.png'),
        ),
      ),
    );
  }
}
