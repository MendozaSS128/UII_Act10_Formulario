import 'package:flutter/material.dart';

void main() {
  runApp(const Pantalla2());
}

class Pantalla2 extends StatelessWidget {
  const Pantalla2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Canciones",
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
  TextEditingController tituloController = TextEditingController();
  TextEditingController albumController = TextEditingController();
  TextEditingController duracionController = TextEditingController();
  TextEditingController idartistaController = TextEditingController();
  TextEditingController reproduccionController = TextEditingController();
  TextEditingController compositoresController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario Cancion"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text("Id Cancion"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese su id de la cancion",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Titulo"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: tituloController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa el titulo"),
              ),
              const Text("Album"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: albumController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese el nombre del album",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Duracion"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: duracionController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Duracion de la cancion"),
              ),
              const Text("Artista"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idartistaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese el id del artista ",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Reproduccion"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: reproduccionController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa cuantas reproducciones tiene"),
              ),
              const Text("Compositores"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: compositoresController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese cuantos compositores tiene",
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
                    hintText: "Ingrese el genero de la cancion"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  print("--Tabla Canciones--");
                  print(idController.text);
                  print(tituloController.text);
                  print(albumController.text);
                  print(duracionController.text);
                  print(idartistaController.text);
                  print(reproduccionController.text);
                  print(compositoresController.text);
                  print(generoController.text);
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
