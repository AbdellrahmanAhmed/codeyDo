import 'package:codey_do/core/constants/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../classes/provider.dart';

class ProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final value = Provider
        .of<providerClass>(context);
    return Column(
      children: [
        Text(
          value.number.toString(),
          style: TextStyle(fontSize: 50),
        ),
        IconButton(
          icon: Icon(value.number %2 == 0 ? Icons.add_circle:Icons.add_circle_outline),
          onPressed: () {
            value.increment();
          },
        ),
        TextField(controller: controller),
        ElevatedButton(
          onPressed: () {
            Provider.of<providerClass>(context, listen: false)
                .addTask(controller.text);
          },
          child: Text(AppStrings.add),
        ),
        Expanded(
          child: Consumer<providerClass>(
            builder: (context, providerClass, child) {
              return ListView.builder(
                itemCount: providerClass.tasks.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(providerClass.tasks[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        providerClass.removeTask(index);
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
