import 'package:flutter/cupertino.dart';

extension PaddingExtention on Widget {
  Padding paddingSymmetric({double? horizontal, double? vertical}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal ?? 0.0,
        vertical: vertical ?? 0.0,
      ),
      child: this,
    );
  }
}