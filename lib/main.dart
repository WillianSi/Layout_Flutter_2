import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu App'),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: <Widget>[
            Image.network(
              'https://i.imgur.com/fzgwYzq.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: AppBar().preferredSize.height,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Clique para Prosseguir'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
