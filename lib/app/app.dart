import 'package:flutter/material.dart';
import 'package:hackathon_github_app/app/core/routes/routes.dart';
import 'package:hackathon_github_app/app/features/login/design/states/states.dart';
import 'package:provider/provider.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return const App();
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp.router(
        title: 'Hackathon Github App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: route,
      ),
    );
  }
}
