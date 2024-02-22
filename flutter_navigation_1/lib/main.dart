import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation_1/green_page.dart';
import 'package:flutter_navigation_1/red_pag.dart';
import 'package:flutter_navigation_1/yellow.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //home: AnaSayfa(),
      routes: {
        '/redPage': (context) => RedPage(),
        '/': (context) => AnaSayfa(),
        '/yellowPage': (context) => YellowPage(),
        '/greenPage': (context) => GreenPage()
      },
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation Islemler'),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade300),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => RedPage(),
                      ));
                },
                child: Text('Kirmizi Sayfaya Gir IOS')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade700),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => RedPage())));
                },
                child: Text('Kirmizi Sayfaya Gir Android')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade700),
                onPressed: () {
                  Navigator.of(context).maybePop();
                },
                child: Text('Maybe Pop Kullanimi')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade700),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => GreenPage())));
                },
                child: Text('Push Replacment')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade700),
                onPressed: () {
                  /* Navigator.of(context).pushNamed();*/
                  Navigator.pushNamed(context, '/redPage');
                },
                child: Text('Push Named kullanimi')),
          ],
        )));
  }
}
