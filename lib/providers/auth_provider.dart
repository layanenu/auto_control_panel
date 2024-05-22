import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider extends ChangeNotifier {
  String? message;
  String? token;

  final _url = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=';
  final _apiKey = 'AIzaSyAMK6BWKeW-KO1dW8VfuOlE9uzRMUuDwGA';

  Future<bool> signUp(String email, String password) async {
    String sUri = '$_url$_apiKey';
    Uri uri = Uri.parse(sUri);
    var response = await http.post(uri, body: {
      'email': email,
      'password': password,
      'returnSecureToken': 'true',
    });
    var resp = jsonDecode(response.body);
    if (response.statusCode == 200) {
      message = "Usuário cadastrado com sucesso!";
      token = resp["idToken"];
      return true;
    } else {
      message = "Erro ao cadastrar usuário";
      return false;
    }
  }
}