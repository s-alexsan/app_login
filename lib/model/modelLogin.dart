// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ModelLogin {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  bool enabledButton = false;

  ModelLogin();

  ModelLogin.fromJson(Map<String, dynamic> json) {
    controller1 = json['controller1'];
    controller2 = json['controller2'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['controller1'] = controller1;
    data['controller2'] = controller2;
    return data;
  }

  void setButton() {
    (controller1.text != '' && controller2.text != '')
        ? enabledButton = true
        : enabledButton = false;
  }

  // Função que verifica o login do usuário
  Future<int> verificarUsuario() async {
    int result = 0;
    return result;
  }
}
