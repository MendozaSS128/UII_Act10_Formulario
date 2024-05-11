import 'package:flutter/material.dart';

void main() {
  runApp(const Pantalla3());
}

class Pantalla3 extends StatelessWidget {
  const Pantalla3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Albums",
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
  TextEditingController artistaController = TextEditingController();
  TextEditingController fechalanController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController numerodepistasController = TextEditingController();
  TextEditingController portadaController = TextEditingController();
  TextEditingController duraciontotalController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario Albums"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text("Id Album"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese su id del album",
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
                    hintText: "Ingresa el titulo del album"),
              ),
              const Text("Artista"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: artistaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese el nombre del artista",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Fecha de lanzamiento"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechalanController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa su fecha del lanzamiento"),
              ),
              const Text("Genero"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: generoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese el genero del album ",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Numero de Canciones"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: numerodepistasController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingresa el numero de pistas"),
              ),
              const Text("Portada"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: portadaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingrese el nombre de la portada",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Duracion Total"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: duraciontotalController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Ingrese la duracion total"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  print("--Tabla Albums--");
                  print(idController.text);
                  print(tituloController.text);
                  print(artistaController.text);
                  print(fechalanController.text);
                  print(generoController.text);
                  print(numerodepistasController.text);
                  print(portadaController.text);
                  print(duraciontotalController.text);
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
