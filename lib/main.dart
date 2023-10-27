import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Imagem de coruja',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MEU APP'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: const Color(0xffadd9df),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 4.0),
              ),
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 190,
                height: 190,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
