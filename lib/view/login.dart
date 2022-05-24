import 'package:app_mobile/model/modelLogin.dart';
import 'package:app_mobile/server/function.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ModelLogin objModel = ModelLogin();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildTextFormField(
              objModel.controller1,
              hintText: 'Usuário',
            ),
            buildTextFormField(
              objModel.controller2,
              obscureText: true,
              hintText: 'Senha',
            ),
            TextButton(
              onPressed:
                  objModel.enabledButton ? () => getUserSenha(objModel) : null,
              child: const Text('Acessar'),
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormField(TextEditingController controller,
      {bool obscureText = false, String hintText = ''}) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
      ),
      onChanged: (String value) => setState(() {
        objModel.setButton();
      }),
    );
  }
}
