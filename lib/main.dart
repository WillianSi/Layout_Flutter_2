import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Imagem Flutter',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTextVisible = false;

  void _toggleTextVisibility() {
    setState(() {
      isTextVisible = !isTextVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleTextVisibility,
            child: Text(
              'Clique para proseguir',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          Image.network(
            'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
            width: 650,
            height: 450,
            fit: BoxFit.cover,
          ),
          if (isTextVisible)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Este é o Mascote do Flutter',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
