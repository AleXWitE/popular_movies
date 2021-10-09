
import 'package:flutter/material.dart';
import 'package:popular_movies/common/data_models/data_models.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [

        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          crossAxisCount: Orientation.portrait == true ? 2 : 4,
        ),
        itemCount: movieItems.length - 1,
        itemBuilder: (BuildContext context, int index) {
          return Container();
        },

      ),
    );
  }
}
