import 'package:flutter/material.dart';
import 'package:sigac/controllers/mainscreen_provider.dart';
import 'package:sigac/views/ui/mainscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MainScreenNotifier())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Esta es la pagina principal del proyecto aqui se hace la configuracion
  //basica del mismo aplicando estilos generales y los diferentes componentes
  //que se pueden llamar desde otros archivos

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIGAC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
