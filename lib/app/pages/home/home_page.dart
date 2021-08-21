import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutterando/app/models/item_model.dart';
import 'package:mobx_flutterando/app/pages/home/home_controller.dart';
import 'components/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  _dialog() {
    var model = ItemModel();
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Adicionar item'),
            content: TextField(
              onChanged: model.setTitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Novo item',
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  controller.addItem(model);
                  Navigator.pop(context);
                },
                child: Text('Salvar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: "Pesquisa..."),
        ),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.listItems.length,
          itemBuilder: (_, index) {
            var item = controller.listItems[index];
            return ItemWidget(item: item);
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
