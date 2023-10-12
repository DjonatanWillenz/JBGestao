import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/models/feria.model.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/modules/form09604/form09604.controller.dart';

class Form09604Page extends GetView<Form09604Controller> {
  const Form09604Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Férias",
      body: FutureBuilder<List<Feria>>(
        future: controller.buscarListaFerias(),
        builder: (BuildContext cx, AsyncSnapshot<List<Feria>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            final lista = snapshot.data;
            if (lista!.isNotEmpty) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: lista.length,
                itemBuilder: (context, index) {
                  if (lista.isNotEmpty) {
                    return ListTile(
                      title: Text(lista[index].getDiasDireito().toString()),
                      subtitle: Text(
                        lista[index].getAquiFim().toString() +
                            " - " +
                            lista[index].getAquiFim().toString(),
                      ),

                      // leading: Text(lista[index].getKey().toString()),
                    );
                  } else {
                    return const Center(
                      child: JBText(
                        lbl: 'Não encontramos registros',
                      ),
                    );
                  }
                },
              );
            } else {
              return const JBText(lbl: "Não encontramos registros");
            }
          } else {
            return const JBText(lbl: "Não encontramos registros");
          }
        },
      ),
    );
  }
}
