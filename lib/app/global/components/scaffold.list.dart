import 'package:flutter/material.dart';
import 'package:mobile/app/global/components/list.title.dart';
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
    required this.onPesquisa,
  });

  @override
  Widget build(BuildContext context) {
    return JBScaffold(
      key: chave,
      title: title,
      body: FutureBuilder<List<JBListTile>>(
        future: onPesquisa!(),
        builder:
            (BuildContext context, AsyncSnapshot<List<JBListTile>> snapshot) {
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
                        text: 'Não encontramos registros',
                      ),
                    );
                  }
                },
              );
            } else {
              return const JBText(text: "Não encontramos registros");
            }
          } else {
            return const JBText(text: "Não encontramos registros");
          }
        },
      ),
    );
  }
}
