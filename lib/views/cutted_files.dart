import 'package:flutter/material.dart';
import 'package:video_crop/widgets/video_min.dart';

class Cutted_files extends StatefulWidget {
  const Cutted_files({super.key});

  @override
  State<Cutted_files> createState() => _Cutted_filesState();
}

class _Cutted_filesState extends State<Cutted_files> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Titre'),
      ),
      body: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              MiniVideo(),
              MiniVideo(),
              MiniVideo(),
              MiniVideo(),
            ],
            ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.red,
      //   child: const Icon(Icons.cut),
      //   onPressed: (() {
          
      //   }),
      // ),
    );
  }
}