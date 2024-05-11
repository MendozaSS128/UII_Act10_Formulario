import 'package:flutter/material.dart';

void main() {
  runApp(const Pantalla1());
}

class Pantalla1 extends StatelessWidget {
  const Pantalla1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Usuarios",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResgistrarPagina(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResgistrarPagina extends StatefulWidget {
  const ResgistrarPagina({Key? key}) : super(key: key);

  @override
  State<ResgistrarPagina> createState() => _ResgistrarPaginaState();
}

class _ResgistrarPaginaState extends State<ResgistrarPagina> {
  TextEditingController idController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController paisController = TextEditingController();
  TextEditingController suscripcionController = TextEditingController();
  TextEditingController playlistController = TextEditingController();
  TextEditingController cancionesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text("IdUsuario"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese su id de usuario",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Nombre"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa su nombre"),
              ),
              const Text("Email"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese su email",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Fecha de registro"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa su fecha de registro"),
              ),
              const Text("Pais"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: paisController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese su pais ",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Suscripcion"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: suscripcionController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa si tiene suscripcion"),
              ),
              const Text("Playlist Creadas"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: playlistController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese cuantas playlist tiene creadas",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Canciones Favoritas"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cancionesController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingrese cuantas canciones favoritas tiene"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  print("--Tabla Usuarios--");
                  print(idController.text);
                  print(nombreController.text);
                  print(emailController.text);
                  print(fechaController.text);
                  print(paisController.text);
                  print(suscripcionController.text);
                  print(playlistController.text);
                  print(cancionesController.text);
                },
                child: Text(
                  "Enviar",
                  style: TextStyle(
                    fontSize: 30,
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
