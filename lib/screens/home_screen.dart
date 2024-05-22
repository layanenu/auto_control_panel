import 'dart:io';

import 'package:auto_control_panel/components/abast_form.dart';
import 'package:auto_control_panel/screens/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/abast_list.dart';
import '../models/abastecimento.dart';
import '../providers/abast_provider.dart';
import '../routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // consultar uma REST API
    // consultar um banco de dados local
  }

  @override
  Widget build(BuildContext context) {
    //Utilitário que nos permite saber em qual SO está
    // Platform.isAndroid;
    // Platform.isIOS;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'about_screen');
            },
            icon: const Icon(Icons.info),
          )
        ],
      ),
      body: const AbastList(),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.local_gas_station),
              title: const Text("Abastecimentos"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                // Navigator.pushNamed(context, routeName);
              },
            ),
            ListTile(
              leading: const Icon(Icons.receipt),
              title: const Text("Formulário"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, Routes.FORM);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("Sobre nós"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                // Navigator.pushNamed(context, routeName)
              },
            ),
          ],
        ),
      ),
    );
  }
}
