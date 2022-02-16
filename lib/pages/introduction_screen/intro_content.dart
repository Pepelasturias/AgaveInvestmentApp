import 'package:curiosity/model/introduction_screen/page_view_model.dart';
import 'package:flutter/material.dart';

class IntroContent extends StatelessWidget {
  final PageViewModel page;
  final bool isFullScreen;

  const IntroContent({
    Key key,
    @required this.page,
    this.isFullScreen = false,
  }) : super(key: key);

  Widget _buildWidget(Widget widget, String text, TextStyle style) {
    return widget ??
        Center(
          child: Text(
            text,
            style: style,
            textAlign: TextAlign.center,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: page.decoration.contentMargin,
      decoration: isFullScreen
          ? page.decoration.boxDecoration ??
              BoxDecoration(
                color: page.decoration.pageColor,
                borderRadius: BorderRadius.circular(8.0),
              )
          : null,
      child: Column(
        children: [
          Padding(
            padding: page.decoration.titlePadding,
            child: _buildWidget(
              page.titleWidget,
              page.title,
              page.decoration.titleTextStyle,
            ),
          ),
          Padding(
            padding: page.decoration.descriptionPadding,
            child: _buildWidget(
              page.bodyWidget,
              page.body,
              page.decoration.titleTextStyle,
            ),
          ),
          if (page.footer != null)
            Padding(
              padding: page.decoration.footerPadding,
              child: page.footer,
            ),
        ],
      ),
    );
  }
}
