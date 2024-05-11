import 'package:flutter/material.dart';

import 'package:mendoza/pantalla1.dart';
import 'package:mendoza/pantalla2.dart';
import 'package:mendoza/drawer_header.dart';
import 'package:mendoza/pantalla3.dart';
import 'package:mendoza/pantalla4.dart';
import 'package:mendoza/pantalla5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//s9s9s9s  rrrrrrr

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
    } else if (currentPage == DrawerSections.contacts) {
      container = const Pantalla1();
    } else if (currentPage == DrawerSections.events) {
      container = const Pantalla2();
    } else if (currentPage == DrawerSections.notes) {
      container = const Pantalla3();
    } else if (currentPage == DrawerSections.settings) {
      container = const Pantalla4();
    } else if (currentPage == DrawerSections.notifications) {
      container = const Pantalla5();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Spotify",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
          Color(0xff28f321),
          Color(0xff1e5ee9),
        ]))),

        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ], //Actions
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(2, "Usuarios", Icons.person,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Canciones", Icons.disc_full,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Albums", Icons.library_music,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "Artistas", Icons.mic_external_on,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Lista de reproduccion", Icons.queue_music,
              currentPage == DrawerSections.notifications ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
}
