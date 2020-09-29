import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void buildDialogColor(
    BuildContext context, Color colorPicked, Function onChange) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
          titlePadding: const EdgeInsets.all(0),
          contentPadding: const EdgeInsets.all(0),
          content: SingleChildScrollView(
              child: ColorPicker(
            colorPickerWidth: 300.0,
            pickerAreaHeightPercent: 0.7,
            pickerAreaBorderRadius:
                BorderRadius.only(topLeft: Radius.circular(10)),
            pickerColor: colorPicked,
            enableAlpha: true,
            paletteType: PaletteType.hsl,
            displayThumbColor: true,
            onColorChanged: (val) => onChange(val),
          )));
    },
  );
}
