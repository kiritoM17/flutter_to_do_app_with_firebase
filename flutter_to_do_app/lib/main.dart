import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/application/ui/views/home_screen_view.dart';

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
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home_screen',
      routes: <String,WidgetBuilder>{
        '/home_screen' : (BuildContext context) => new HomeScreenView(),
      },
    );
  }
}
