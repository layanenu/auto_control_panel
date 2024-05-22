import 'package:auto_control_panel/providers/abast_provider.dart';
import 'package:auto_control_panel/providers/auth_provider.dart';
import 'package:auto_control_panel/routes.dart';
import 'package:auto_control_panel/screens/about_screen.dart';
import 'package:auto_control_panel/screens/details_screen.dart';
import 'package:auto_control_panel/screens/form_screen.dart';
import 'package:auto_control_panel/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AuthProvider authProvider = AuthProvider();
    authProvider.signUp('lay@ne.com', '123456');

    return MultiProvider(
      providers: [
        Provider<AbastProvider>(create: (context) => AbastProvider()),
        Provider<AuthProvider>(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Auto Control Panel',
        debugShowCheckedModeBanner: false, // esconde a faixa de debug que aparece no device
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent)
        ),
        routes: {
          Routes.SIGNUP: (context) => SignUpScreen(),
          Routes.HOME: (context) => HomeScreen(),
          'about_screen': (context) => AboutScreen(),
          'details_screen': (context) => DetailsScreen(),
          Routes.FORM: (context) => FormScreen(),
        },
      ),
    );
  }
}