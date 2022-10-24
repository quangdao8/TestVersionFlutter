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
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.create),
      ),
    );
  }
}
