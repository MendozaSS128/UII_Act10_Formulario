import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerMendoza());

class MiDrawerMendoza extends StatelessWidget {
  const MiDrawerMendoza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4bd581),
          title: const Text("Mi Drawer Mendoza"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add_comment),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ], //Actions
        ),
      ),
    );
  }
}
