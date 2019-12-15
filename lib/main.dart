import 'package:flutter/material.dart';
import 'package:example/theme/style.dart';
import 'package:example/routes.dart';
import 'package:example/bloc/bloc-prov-tree.dart';
import 'package:example/bloc/bloc-prov.dart';
import 'package:example/blocs/blocs.dart';
import 'blocs/blocs.dart';

void main() {
  runApp(ExampleApp());
}
class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider>[
        BlocProvider<AuthBloc>(bloc: AuthBloc()),
        BlocProvider<PrefBloc>(bloc: PrefBloc()),
      ],
      child: MaterialApp(
        title: 'ExampleApp',
        theme: appTheme(),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}