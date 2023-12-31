import 'package:flutter/material.dart';
import 'package:mobile/app/global/components/scaffold.dart';

class JBScaffoldCrud extends StatelessWidget {
  final String? title;
  final GlobalKey? chave;
  final Widget? body;
  final Widget? floatingActionButton;

  const JBScaffoldCrud({
    super.key,
    this.title,
    this.chave,
    this.body,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return JBScaffold(
      key: chave,
      title: title,
      body: SingleChildScrollView(child: body),
      floatingActionButton: floatingActionButton,
    );
  }
}
