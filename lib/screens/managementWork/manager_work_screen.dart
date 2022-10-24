import 'package:exp2/screens/managementWork/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Manager_Work extends StatelessWidget {
  const Manager_Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quản lí công việc',
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.white),
        ),
      ),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showMaterialDialog(context);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.create),
      ),
    );
  }

  void _showMaterialDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Material Dialog'),
            content: SingleChildScrollView(
              child: Column(children: [
                 TextField(
                  decoration:  InputDecoration(
                      hintText: 'nhap cong viec', labelText: 'Cong Viec'),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'nhap cong viec', labelText: 'Mo Ta'),
                ),
              ]),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    _dismissDialog(context);
                  },
                  child: const Text('Close')),
              TextButton(
                onPressed: () {
                  print('HelloWorld!');
                  _dismissDialog(context);
                },
                child: const Text('HelloWorld!'),
              )
            ],
          );
        });
  }

  _dismissDialog(BuildContext context) {
    Navigator.pop(context);
  }
}
