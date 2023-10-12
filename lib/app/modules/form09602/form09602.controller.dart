import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Form09602Controller extends GetxController {
  Future<List<ListTile>> buscarListaRecibosPagamento() async {
    List<ListTile> response = [];

    response.add(
      const ListTile(
        title: Text("01/2020"),
        subtitle: Text('06/02/2020'),
      ),
    );

    return response;
  }
}
