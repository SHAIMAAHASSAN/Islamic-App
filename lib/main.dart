import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:islamicapp/model/prayerCount.model.dart';
import 'package:islamicapp/provider/audio.player.provider.dart';
import 'package:islamicapp/provider/tasbeh.provider.dart';
import 'package:islamicapp/views/main.page.views.dart';
import 'package:provider/provider.dart';

void main()  {
  /*WidgetsFlutterBinding.ensureInitialized();
  Position position = await Geolocator.getCurrentPosition();
  // Get the current heading of the phone.
 // double heading = await FlutterCompass.headings;

  // Calculate the direction of the Qiblah.
  double qiblahDirection = atan2(
    sin(position.longitude - 39.825183),
    cos(position.latitude) * sin(21.422487) -
        sin(position.latitude) * cos(21.422487) * cos(position.longitude - 39.825183),
  );

  // Print the direction of the Qiblah.
  print(qiblahDirection);*/
  runApp( Directionality(
    textDirection: TextDirection.rtl,
    child: MultiProvider(
        providers: [
        ChangeNotifierProvider(
        create: (context) => AudioPlayerProvider()),
          ChangeNotifierProvider(
              create: (context) =>TasbehProvider()),
          ChangeNotifierProvider(create: (context) => SubhanAllahWbehamdaCount()),
          ChangeNotifierProvider(create: (context) => AstaghfirullahCount()),
          ChangeNotifierProvider(create: (context) => SubhanAllahCount()),
          ChangeNotifierProvider(create: (context) => ElhamedAllahCount()),
          ChangeNotifierProvider(create: (context) =>LaelAllahCount()),
          ChangeNotifierProvider(create: (context) =>LaHawlaCount()),
          ChangeNotifierProvider(create: (context) => AlhamSaliCount()),
          ChangeNotifierProvider(create: (context) =>GhersElGanaCount()),
          ChangeNotifierProvider(create: (context) => SalaNariaCount()),
          ChangeNotifierProvider(create: (context) =>SalaSahabiaCount()),
        ],child: const MyApp(),
    ),
  )
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return MainPage();
  }
}
