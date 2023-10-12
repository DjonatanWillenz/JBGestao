import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/models/ponto.model.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/modules/form09605/form09605.controller.dart';

class Form09605Page extends GetView<Form09605Controller> {
  const Form09605Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Informes de rendimentos",
      body: FutureBuilder<List<Ponto>>(
        future: controller.buscarListaPonto(),
        builder: (BuildContext cx, AsyncSnapshot<List<Ponto>> snapshot) {
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
                      title: Text(lista[index].getData().toString()),
                      subtitle: Text(
                        lista[index].getHoraEntrada().toString() +
                            " - " +
                            lista[index].getHoraSaida().toString(),
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
