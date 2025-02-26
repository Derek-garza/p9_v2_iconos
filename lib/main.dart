import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Derek Garza M 22308051281196"),
          titleTextStyle: TextStyle(color: Color(0xfffdfdfd), fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xff292852),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Derek Santiago Garza Martinez 22308051281196",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xd10949d2))),
              // Primera fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconWithSubtitle(
                      icon: Icons.thumb_up,
                      subtitle: 'Pulgar arriba',
                      color: Colors.green), // Color verde
                  IconWithSubtitle(
                      icon: Icons.access_alarm,
                      subtitle: 'alarmas',
                      color: Colors.orange), // Color naranja
                  IconWithSubtitle(
                      icon: Icons.star,
                      subtitle: 'Destacado',
                      color: Colors.yellow), // Color amarillo
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconWithSubtitle(
                      icon: Icons.girl,
                      subtitle: 'Girl',
                      color: Colors.pink), // Color rosa
                  IconWithSubtitle(
                      icon: Icons.boy,
                      subtitle: 'Boy',
                      color: Colors.blue), // Color azul
                  IconWithSubtitle(
                      icon: Icons.thumb_down,
                      subtitle: 'Pulgar abajo',
                      color: Colors.red), // Color rojo
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para un ícono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color color; // Nuevo parámetro para el color

  IconWithSubtitle(
      {required this.icon,
      required this.subtitle,
      this.color = Colors.blue}); // Color predeterminado azul

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Usar el color proporcionado
        SizedBox(height: 8), // Espacio entre el ícono y el subtítulo
        Text(subtitle, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
