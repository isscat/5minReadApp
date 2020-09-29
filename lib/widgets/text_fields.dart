import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildIcon(IconData icon, Function onPress) {
  return IconButton(
      icon: Icon(
        icon,
        size: 30,
      ),
      onPressed: onPress);
}

double fontSize = 30;
List<TextStyle> fonts = [
  GoogleFonts.aBeeZee(fontSize: 40.0),
  GoogleFonts.peddana(fontSize: fontSize),
  GoogleFonts.secularOne(fontSize: fontSize),
  GoogleFonts.josefinSans(fontSize: fontSize),
  GoogleFonts.dancingScript(fontSize: fontSize),
  GoogleFonts.architectsDaughter(fontSize: fontSize),
  GoogleFonts.teko(fontSize: fontSize),
  GoogleFonts.indieFlower(fontSize: fontSize),
  GoogleFonts.amaticSc(fontSize: fontSize),
  GoogleFonts.caveat(fontSize: fontSize),
  GoogleFonts.courgette(fontSize: fontSize),
  GoogleFonts.satisfy(fontSize: fontSize),
  GoogleFonts.pressStart2p(fontSize: fontSize),
  GoogleFonts.concertOne(fontSize: fontSize),
  GoogleFonts.monoton(fontSize: fontSize),
  GoogleFonts.markaziText(fontSize: fontSize),
  GoogleFonts.elMessiri(fontSize: fontSize),
  GoogleFonts.marckScript(fontSize: fontSize),
  GoogleFonts.juliusSansOne(fontSize: fontSize),
  GoogleFonts.frederickaTheGreat(fontSize: fontSize),
  GoogleFonts.bungeeInline(fontSize: fontSize),
  GoogleFonts.nanumBrushScript(fontSize: fontSize),
  GoogleFonts.wallpoet(fontSize: fontSize),
  GoogleFonts.megrim(fontSize: fontSize),
  GoogleFonts.fasterOne(fontSize: fontSize),
  GoogleFonts.oregano(fontSize: fontSize),
  GoogleFonts.cormorantUpright(fontSize: fontSize),
  GoogleFonts.katibeh(fontSize: fontSize),
  GoogleFonts.hiMelody(fontSize: fontSize),
  GoogleFonts.mogra(fontSize: fontSize),
  GoogleFonts.overlockSc(fontSize: fontSize),
];
void buildText(BuildContext context, Color colorPicked) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 150,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildIcon(Icons.format_bold, null),
                    buildIcon(Icons.format_italic, null),
                    buildIcon(Icons.border_color, null),
                    buildIcon(Icons.text_fields, null)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 1,
                        child: ListTile(
                          title: Text(
                            "You're your own healer",
                            style: fonts[index],
                          ),
                        ),
                      );
                    },
                    itemCount: fonts.length,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
