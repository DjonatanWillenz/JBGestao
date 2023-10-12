import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/models/agendamento.model.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/modules/form09606/form09606.controller.dart';

class Form09606Page extends GetView<Form09606Controller> {
  const Form09606Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Ponto",
      body: FutureBuilder<List<Agendamento>>(
        future: controller.buscarListaAgendamentos(),
        builder: (BuildContext cx, AsyncSnapshot<List<Agendamento>> snapshot) {
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
                      title: Text(lista[index].getTitulo().toString()),
                      subtitle: Text(lista[index].getDescricao().toString()),
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
