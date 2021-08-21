import 'package:flutter/cupertino.dart';
import 'package:mobx_flutterando/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class BodyWidget extends StatelessWidget {
  _textField({labelText, onChanged, errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Observer(builder: (_) {
            return _textField(
              labelText: "name",
              onChanged: controller.client.changeName,
              errorText: controller.validateName,
            );
          }),
          SizedBox(height: 20),
          Observer(builder: (_) {
            return _textField(
              labelText: "email",
              onChanged: controller.client.changeEmail,
              errorText: controller.validateEmail,
            );
          }),
          SizedBox(height: 20),
          Observer(builder: (_) {
            return _textField(
              labelText: "CPF",
              onChanged: controller.client.changeCpf,
              errorText: controller.validateCpf,
            );
          }),
          SizedBox(height: 50),
          Observer(builder: (_) {
            return ElevatedButton(
              onPressed: controller.isValid ? () {} : null,
              child: Text('Salvar'),
            );
          })
        ],
      ),
    );
  }
}
