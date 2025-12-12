import 'package:flutter/material.dart';
import 'package:sandwich_shop/views/app_styles.dart';

PreferredSizeWidget buildCommonAppBar({
  required String title,
bool showLogo = false,
}) {
  return AppBar(
    leading: showLogo
        ? Padding(
            padding: const EdgeInsets.all(6.0),
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
            ),
          )
        : null,
    title: Text(
      title,
      style: heading1,
    ),
  );
}