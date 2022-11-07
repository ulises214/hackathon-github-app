import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hackathon_github_app/app/features/home/home.dart';
import 'package:hackathon_github_app/app/features/initial/initial.dart';
import 'package:hackathon_github_app/app/features/login/design/pages/login.dart';

final GoRouter route = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, state) => const InitialPage(),
    ),
    GoRoute(
      path: '/login/:isRegister',
      builder: (BuildContext context, state) {
        return LoginPage(isRegister: state.params['isRegister']! == 'true');
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, state) => const HomePage(),
    ),
  ],
);
