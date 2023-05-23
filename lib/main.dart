import 'package:api_laravel/providers/publicaciones_provider.dart';
import 'package:flutter/material.dart';

import 'package:api_laravel/screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(const EstadoApp());

class EstadoApp extends StatelessWidget {
  const EstadoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> PublicacionesProvider(), lazy: false)
    ],
    child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'inicio',
      routes: <String, WidgetBuilder>{
        'inicio'      : (_) => const HomeScreen(),
        'publicacion' : (_) => const PublicacionScreen(),
        'publicaciones' : (_) => const PublicacionesScreen()
      },
    );
  }
}