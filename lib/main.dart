import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// const Uri urlYoutube =  'https://www.youtube.com/';
// var urlYoutube = Uri(scheme: 'https', host: 'www.youtube.com');

// void main() {
//   runApp(const MaterialApp(
//       home: Scaffold(
//           body: Center(
//             child: ElevatedButton(onPressed: _launchUrl, child: Text('Test YouTube URL')),
//   ))));
// }

// void _launchUrl() async {
//   if (!await launchUrl(urlYoutube)) {
//     throw Exception('Could not launch $urlYoutube');
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Url Launcher App',
      home: Scaffold(
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: data.map((item) {
        return Card(
          child: ListTile(
            title: Text(item['name']),
          ),
        );
      }).toList(),
    );
  }
}

List data = [
  {
    "name": 'Google',
    "url": Uri(scheme: 'https', host: 'google.com'),
    "icon": FontAwesomeIcons.google,
    "color": Colors.blueAccent,
  },
  {
    "name": 'YouTube',
    "url": Uri(scheme: 'https', host: 'www.youtube.com'),
    "icon": FontAwesomeIcons.youtube,
    "color": Colors.redAccent,
  },
  {
    "name": 'GitHub',
    "url": Uri(scheme: 'https', host: 'github.com'),
    "icon": FontAwesomeIcons.github,
    "color": Colors.black,
  }
];
