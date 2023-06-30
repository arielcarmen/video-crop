import 'package:flutter/material.dart';
import 'package:video_crop/views/cutted_files.dart';
import 'package:video_crop/widgets/video_min.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.grey,
    ),
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Titre'),
      ),
      body: Stack(
        children: [
          Center(
            child: AssetImage('assets/images/background.png'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.cut),
        onPressed: (() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Cutted_files()));
        }),
      ),
    );
  }
}