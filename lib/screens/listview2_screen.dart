import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Super mario', 'Megaman', 'Contra'];
  // final options = const [
  //   {'name': 'Super mario', 'poder': 'salto'},
  //   {'name': 'Megaman', 'poder': 'disparo recargado'},
  //   {'name': 'Contra', 'poder': 'disparo'}
  // ];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Tipo 2"),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(options[i]),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.indigo),
                  onTap: () {
                    final game = options[i];
                    print(game);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
