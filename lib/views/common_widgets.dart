import 'package:flutter/material.dart';
import 'package:sandwich_shop/views/app_styles.dart';

PreferredSizeWidget buildCommonAppBar({
  required String title,
}) {
  return AppBar(
    title: Text(
      title,
      style: heading1,
    ),
  );
}
