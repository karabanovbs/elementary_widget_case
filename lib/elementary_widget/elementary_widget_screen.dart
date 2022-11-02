import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import 'elementary_widget_wm.dart';

class ElementaryWidgetScreen extends ElementaryWidget<ElementaryWidgetWM> {
  final String title;

  const ElementaryWidgetScreen(
    this.title, {
    Key? key,
    WidgetModelFactory<ElementaryWidgetWM> wmFactory = createElementaryWidgetWM,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ElementaryWidgetWM wm) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: MediaQuery(
        data: const MediaQueryData(),
        child: Scaffold(
          body: Center(
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
