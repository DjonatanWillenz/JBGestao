import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/models/recibo.pagamento.model.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/modules/form09602/form09602.controller.dart';

class Form09602Page extends GetView<Form09602Controller> {
  const Form09602Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Recibos de pagamento",
      body: FutureBuilder<List<ReciboPagamentoVO>>(
        future: controller.findAllWorkers(),
        builder:
            (BuildContext cx, AsyncSnapshot<List<ReciboPagamentoVO>> snapshot) {
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
                      title: Text(lista[index].competencia.toString()),
                      subtitle: Text(lista[index].valorLiquido.toString()),

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
