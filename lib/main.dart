import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerMendoza());

class MiDrawerMendoza extends StatefulWidget {
  const MiDrawerMendoza({Key? key}) : super(key: key);

  @override
  State<MiDrawerMendoza> createState() => _MiDrawerMendozaState();
}

class _MiDrawerMendozaState extends State<MiDrawerMendoza> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numeroController = TextEditingController();
  TextEditingController ubiController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        drawer: Drawer(
          child: ListView(
            shrinkWrap: true,
            children: [
              DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/spotify.jpg'))),
                child: const Stack(),
              ),
              const Text(
                "Registrarte",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              const Text("Nombre"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa el nombre"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Email"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrea el email",
                ),
              ),
              const Text("Numero"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: numeroController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa tu numero"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Ubicacion"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: ubiController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrea tu pais",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent,
                    minimumSize: Size(16, 60)),
                onPressed: () {
                  print(nombreController.text);
                  print(emailController.text);
                  print(numeroController.text);
                  print(ubiController.text);
                },
                child: Text(
                  "Registrar",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
