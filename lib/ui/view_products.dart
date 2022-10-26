import 'package:finalproject/ui/controller_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ViewProducts extends GetView<ControllerProducts> {
  const ViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My products "),
        backgroundColor: Color.fromARGB(255, 255, 183, 0),
      ),
      body: controller.obx(
        (state) => Center(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                controller.productList.length,
                (index) => Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: Text(controller.productList[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle:
                            Text(controller.productList[index].description),
                        trailing: Chip(
                            backgroundColor: Color.fromARGB(255, 255, 249, 181),
                            label: Text(
                              "Soumis",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 183, 0),
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
