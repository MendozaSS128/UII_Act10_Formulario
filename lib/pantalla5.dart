import 'package:flutter/material.dart';

void main() {
  runApp(const Pantalla5());
}

class Pantalla5 extends StatelessWidget {
  const Pantalla5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lista de reproduccion",
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
  TextEditingController idusuarioController = TextEditingController();
  TextEditingController fechacreacionController = TextEditingController();
  TextEditingController descripcionController = TextEditingController();
  TextEditingController publicolanzaController = TextEditingController();
  TextEditingController numerocancController = TextEditingController();
  TextEditingController colaboritaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario Lista de reproduccion"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text("Id Playlist"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese su id de la playlist",
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
                    hintText: "Ingresa el nombre de la playlist"),
              ),
              const Text("Usuario"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idusuarioController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese el nombre del usuario",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Fecha de creacion"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechacreacionController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa la fecha de creacion"),
              ),
              const Text("Descripcion"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: descripcionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese la descripcion de la playlist",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Publico"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: publicolanzaController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa si es o no publico la playlist"),
              ),
              const Text("Numero de canciones"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: numerocancController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese el numero de canciones",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Colaborativa"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: colaboritaController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingrese si es o no es colaborativa"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  print("--Tabla Playlist--");
                  print(idController.text);
                  print(nombreController.text);
                  print(idusuarioController.text);
                  print(fechacreacionController.text);
                  print(descripcionController.text);
                  print(publicolanzaController.text);
                  print(numerocancController.text);
                  print(colaboritaController.text);
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
