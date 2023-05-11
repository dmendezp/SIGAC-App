//Aqui se realiza la imporatcion de los diferentes recurso que ofrece Flutter
//Tambien se hace la importacion de las demas vistas
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:sigac/controllers/mainscreen_provider.dart';
import 'package:sigac/views/shared/appstyle.dart';
import 'package:sigac/views/shared/bottom_nav_bar.dart';
import 'package:sigac/views/shared/bottom_nav_widget.dart';
import 'package:sigac/views/ui/attendancepage.dart';
import 'package:sigac/views/ui/homepage.dart';
import 'package:sigac/views/ui/profilepage.dart';
import 'package:sigac/views/ui/searchpage.dart';
import 'package:sigac/views/ui/infopage.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  //Esta es la lista de paginas de las cuales podemos acceder mediante la
  //precarga del archivos en el siguiente list, kuego de esto mediante la
  //invocacion de un arreglo se trae la vista que se quiere mostrar en el
  //momento en la pantalla.
  List<Widget> pageList = const [
    //Se organizan las vistas segun lo que queramos mostrar.
    HomePage(),
    //Vista de busqueda
    SearchPage(),
    //Vista de Asistencia
    AttendancePage(),
    //Vista del perfil quien esta en el aplicativo
    ProfilePage(),
    //Vista de informacion sobre que es SIGAC
    InfoPage()
  ];

  @override
  Widget build(BuildContext context) {
    //Aqui se llama la vista que se quiere ver, esta parte del orden en el
    //que se encuentran y adicionalmente empieza de 0 en adelante.
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFF1017ae),
          //Aqui se muestra el diferente contenido de cada vista que se llama,
          //agregando que esta tiene estilos generales definidos los cuales pueden
          //ser eliminados o editados en cualquier momento.
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
