import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MEU APP'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Willian Silvestre'),
                accountEmail: Text('willian@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0xff0b5ca0),
                  child: Text('W.S', style: TextStyle(color: Colors.white)),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Curso de Flutter'),
                onTap: _launchFlutterCourse,
              ),
              const ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Curso de PHP'),
                onTap: _launchPHPCourse,
              ),
              const ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Curso de Java'),
                onTap: _launchJavaCourse,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _launchFlutterCourse() async {
  const url = 'https://youtu.be/XeUiJJN0vsE?si=yFuBUF2Tu3nwEo6x';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível abrir o link: $url';
  }
}

Future<void> _launchPHPCourse() async {
  const url = 'https://youtu.be/TfsO0BGvGn0?si=3wk6ad4yIBsdqKip';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível abrir o link: $url';
  }
}

Future<void> _launchJavaCourse() async {
  const url = 'https://youtu.be/sTX0UEplF54?si=rJSrJkb8vpcSTxfE';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível abrir o link: $url';
  }
}
