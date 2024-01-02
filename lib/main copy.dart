import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MathML Example with Poppins Font'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: TeXView(
              renderingEngine: TeXViewRenderingEngine.katex(),
              child: TeXViewDocument(
                """
                <html>
                  <body>
                    <math xmlns="http://www.w3.org/1998/Math/MathML">
                      <msup>
                        <mi>x</mi>
                        <mn>2</mn>
                      </msup>
                    </math>
                  </body>
                </html>
                """,
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.center,
                  fontStyle: TeXViewFontStyle(
                    fontWeight: TeXViewFontWeight.w500,
                    fontSize: 33,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
