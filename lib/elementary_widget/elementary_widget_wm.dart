import 'package:elementary/elementary.dart';
import 'package:flutter/widgets.dart';

import 'elementary_widget_model.dart';
import 'elementary_widget_screen.dart';

class ElementaryWidgetWM
    extends WidgetModel<ElementaryWidgetScreen, ElementaryWidgetModel> {
  ElementaryWidgetWM(super.model);

  @override
  void didUpdateWidget(ElementaryWidgetScreen oldWidget) {
    super.didUpdateWidget(oldWidget);

    if(widget.title != oldWidget.title) {
      print('title changed');
    }
  }
}

ElementaryWidgetWM createElementaryWidgetWM(BuildContext context) =>
    ElementaryWidgetWM(
      ElementaryWidgetModel(),
    );
