import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/models/informe.rendimento.model.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/modules/form09603/form09603.controller.dart';

class Form09603Page extends GetView<Form09603Controller> {
  const Form09603Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Informes de rendimentos",
      body: FutureBuilder<List<InformeRendimento>>(
        future: controller.buscarInformesRendimentos(),
        builder:
            (BuildContext cx, AsyncSnapshot<List<InformeRendimento>> snapshot) {
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
                      title: Text(lista[index].getAno().toString()),
                      subtitle: Text(lista[index].getAno().toString()),

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
