import 'package:flutter/material.dart';
import 'package:fl_components/Widgets/Widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCardType1(),
              SizedBox(
                height: 20,
              ),
              CustomCardType2(
                imageUrl: 'https://images4.alphacoders.com/936/936378.jpg',
              ),
              SizedBox(
                height: 20,
              ),
              CustomCardType2(
                imageUrl:
                    'https://static.vecteezy.com/system/resources/previews/001/235/937/large_2x/4k-uhd-illustrated-space-triangles-free-photo.jpg',
                textImage: 'Imagen 1',
              ),
            ]));
  }
}
