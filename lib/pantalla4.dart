import 'package:flutter/material.dart';

void main() {
  runApp(const Pantalla4());
}

class Pantalla4 extends StatelessWidget {
  const Pantalla4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Artistas",
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
  TextEditingController nacionalidadController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController fechanaciController = TextEditingController();
  TextEditingController albumslanzaController = TextEditingController();
  TextEditingController seguidoresController = TextEditingController();
  TextEditingController premiosController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario Artistas"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text("Id Artista"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese su id del artista",
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
                    hintText: "Ingresa el nombre del artista"),
              ),
              const Text("Nacionalidad"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nacionalidadController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese la nacionalidad del artistas",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Genero"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: generoController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa el genero"),
              ),
              const Text("Fecha de Nacimiento"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechanaciController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese la fecha de nacimiento",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Seguidores"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: seguidoresController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa el numero de seguidores"),
              ),
              const Text("Premios"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: premiosController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese el numero de premios",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Albums lanzados"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: albumslanzaController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingrese la cantidad de albums"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  print("--Tabla Artista--");
                  print(idController.text);
                  print(nombreController.text);
                  print(nacionalidadController.text);
                  print(generoController.text);
                  print(fechanaciController.text);
                  print(albumslanzaController.text);
                  print(seguidoresController.text);
                  print(premiosController.text);
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
