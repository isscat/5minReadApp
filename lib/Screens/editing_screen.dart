// import 'package:DreamsApp/widgets/card.dart';
import 'package:DreamsApp/widgets/card.dart';
import 'package:DreamsApp/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import '../widgets/color_dialog.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class EditingScreen extends StatefulWidget {
  @override
  _EditingScreenState createState() => _EditingScreenState();
}

class _EditingScreenState extends State<EditingScreen> {
  TextStyle currentFont = GoogleFonts.peddana(fontSize: 30);
  Color colorPicked = Colors.purple;
  double _textSize = 48;
  String _text = "";
  void textChanged(String changedText) {
    this._text = changedText;
  }

  void onColorChanged(val) {
    setState(() {
      colorPicked = val;
    });
  }

  void _onTextSizeChanged(BuildContext context) {
    buildText(context, colorPicked);
  }

  Widget buildIcon(IconData icon, Function onPress) {
    return IconButton(
      icon: Icon(
        icon,
        size: 36.0,
      ),
      onPressed: onPress,
    );
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildIcon(Icons.color_lens, () {
              buildDialogColor(context, colorPicked, onColorChanged);
            }),
            buildIcon(Icons.done, () {}),
            buildIcon(Icons.text_format, () => _onTextSizeChanged(context)),
          ],
        ),
        elevation: 10,
      ),
      body: CardScreen(
        fieldText: _text,
        ontextChanged: textChanged,
        picked: colorPicked,
        textSize: _textSize,
        fontFamily: currentFont,
      ),
    );
  }
}
