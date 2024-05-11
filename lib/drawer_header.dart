import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/fotoperfil2.jpg'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/perfil22.jpg'),
              ),
            ),
          ),
          Text(
            "Selma Mendoza ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "a.21308051280386@cbtis128.edu.mx",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
