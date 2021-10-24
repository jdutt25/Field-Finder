import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {

    runApp(
      const MyApp(
        //items: List<String>.generate(10000, (i) => 'Item $i'),
        items: ['American Family Fields of Phoenix','Camelback Ranch', 'Goodyear '
            'Ballpark', 'Hohokam Stadium', 'Peoria Sports Complex', 'Salt River '
            'Fields at Talking Stick', 'Scottsdale Stadium', 'Sloan Stadium',
            'Surprise Stadium', 'Templo Diablo Stadium'],
      ),
    );
  }

class MyApp extends StatelessWidget {
  final List items;

  const MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Field Finder: Cactus League';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.separated(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            }
        ),
      ),
    );
  }
}
    