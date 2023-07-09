import 'package:flutter/material.dart';
//import 'package:labsintareas/app/view/home.dart';
import 'package:labsintareas/app/view/splash/splash_page.dart';
//import 'package:labsintareas/app/view/task_list/task_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF40B7AD);
    const textColor = Color(0xDD4A4A4A);
    const backgroundColor = Color(0xFFF5F5F5);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Poppins',
              bodyColor: textColor,
              displayColor: textColor,
            ),
        useMaterial3: true,
      ),
      home: SplashPage(),

      //const TaskListPage(),

      //SplashPage(),
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
