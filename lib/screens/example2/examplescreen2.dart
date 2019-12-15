import 'package:flutter/material.dart';
import 'package:example/screens/example2/components/body.dart';
import 'package:example/screens/example2/example2-bloc.dart';
import 'package:example/bloc/bloc-prov.dart';

class ExScreen2 extends StatefulWidget {
  @override
  _ExScreen2State createState() => _ExScreen2State();
}

class _ExScreen2State extends State<ExScreen2> {
  Example2Bloc example2Bloc;

  @override
  void initState() {
    super.initState();

    example2Bloc = Example2Bloc();
  }

  @override
  void dispose() {
    example2Bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: Example2Bloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Body(),
      ),
    );
  }
}
