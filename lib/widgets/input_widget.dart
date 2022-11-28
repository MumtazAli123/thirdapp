import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIConfig {
  InputDecoration inputDecoration(String hintText, String labelText,
      IconData? prefixIcon, IconData? suffixIcon, void Function()? onTap) {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: CupertinoColors.inactiveGray,
          )),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
            color: CupertinoDynamicColor(
                color: Colors.blue,
                darkColor: Colors.grey,
                highContrastColor: Colors.red,
                darkHighContrastColor: Colors.grey,
                elevatedColor: Colors.yellow,
                darkElevatedColor: Colors.grey,
                highContrastElevatedColor: Colors.red,
                darkHighContrastElevatedColor: Colors.grey)),
      ),
      hintText: hintText,
      labelText: labelText,
      prefixIcon: Icon(prefixIcon),
      suffixIcon: InkWell(
        onTap: onTap,
        child: Icon(suffixIcon),
      ),
    );
  }
}
