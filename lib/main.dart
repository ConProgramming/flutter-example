import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:exampleapp/blocprovs/example-bloc-prov.dart';
import 'package:exampleapp/blocs/example-bloc.dart';
import 'package:exampleapp/theme/style.dart';
import 'package:exampleapp/screens/example1/examplescreen1.dart';
import 'package:exampleapp/screens/example2/examplescreen2.dart';

void main() {
  runApp(ExampleApp());
}
class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExampleProvider(
      bloc: ExampleBloc(),
      child: MaterialApp(
        title: 'ExampleApp',
        theme: appTheme(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => ExScreen1(),
          "/ExScreen2": (BuildContext context) => ExScreen2(),
        },
      ),
    );
  }
}