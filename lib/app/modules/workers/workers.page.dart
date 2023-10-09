import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/models/workers.model.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/modules/workers/workers.controller.dart';

class WorkersPage extends GetView<WorkersController> {
  const WorkersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Trabalhadores",
      body: Center(
        child: FutureBuilder<List<WorkerVO>>(
          future: controller.findAllWorkers(),
          builder: (BuildContext cx, AsyncSnapshot<List<WorkerVO>> snapshot) {
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
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    if (lista.isNotEmpty) {
                      return ListTile(
                        title: Text(lista[index].getName().toString()),
                        subtitle: Text(lista[index].getCpf().toString()),
                        leading: const Icon(
                          Icons.device_thermostat_sharp,
                          color: Colors.blue,
                        ),
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
      ),
    );
  }
}
