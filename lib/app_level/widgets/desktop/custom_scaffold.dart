import 'package:experiments_with_web/app_level/extensions/textstyle_extension.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key key,
    this.titleText = 'Your Title',
    this.child,
    this.showAppBar = true,
  }) : super(key: key);

  final String titleText;
  final Widget child;
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              title: Text(titleText, style: const TextStyle().c(Colors.black)),
            )
          : null,
      body: child ?? const Center(child: Text('Hi there')),
    );
  }
}
