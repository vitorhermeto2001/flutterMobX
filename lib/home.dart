import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutterando/controller.dart';
import 'controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(start: 40, end: 40),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Nome'),
                    onChanged: controller.changeName,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(labelText: 'Sobrenome'),
                    onChanged: controller.changeLastName,
                  ),
                  SizedBox(height: 50),
                  Observer(
                    builder: (_) {
                      return Text("${controller.nomecompleto}");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
