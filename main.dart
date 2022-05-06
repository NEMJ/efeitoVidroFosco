import 'package:flutter/material.dart';
import 'dart:ui';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          width: MediaQuery.of(context).size.width,
          image: const NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          fit: BoxFit.fill,
        ),
        Center(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              //width: 200.0, <<-- aqui, se quiser deixar so uma parte com o efeito
              //height: 200.0,<<-- aqui, se quiser deixar so uma parte com o efeito
              decoration: BoxDecoration(
                color: Colors.grey.shade800.withOpacity(0.5)
              ),
              child: Center(
                child: Text(
                  'Texto',
                  style: Theme.of(context).textTheme.headline3
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

