import 'package:flutter/material.dart';
import 'package:mobile/app/global/components/scaffold.dart';
import 'package:mobile/app/global/components/text.dart';

class JBScaffoldList extends StatelessWidget {
  final String? title;
  final GlobalKey? chave;
  final Function? onPesquisa;

  const JBScaffoldList({
    super.key,
    this.title,
    this.chave,
    this.onPesquisa,
  });

  @override
  Widget build(BuildContext context) {
    return JBScaffold(
      key: chave,
      title: title,
      body: FutureBuilder<List<ListTile>>(
        future: onPesquisa!(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ListTile>> snapshot) {
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
                    return lista[index];
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
