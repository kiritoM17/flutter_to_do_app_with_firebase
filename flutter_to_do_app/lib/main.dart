import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/application/ui/views/home_screen_view.dart';

import 'application/ui/views/to_do_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/home_screen',
      routes: <String,WidgetBuilder>{
        '/home_screen' : (BuildContext context) => new HomeScreenView(),
        '/to_do_screen' : (BuildContext context) => new ToDoScreenView(),
      },
    );
  }
}
