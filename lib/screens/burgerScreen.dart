import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF141414),
      appBar: AppBar(
        backgroundColor: Color(0xFF141414),
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(width: 15.0),
          Icon(Icons.person_outline),
          SizedBox(width: 15.0),
          Icon(Icons.bookmark_border),
          SizedBox(width: 15.0,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "45.99 ₺",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height/12,
                  color: Colors.amber,
                )
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Burger",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.height/15,
                      color: Color(0xFFF6491E),
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ),
                Image(image: AssetImage('assets/burger.png'),
                width: 250.0,
                )
              ],
            ),
            SizedBox(height: 30.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Klasik Burger",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 28.0,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Burger Mükemmel çok güzel ',
                  style: GoogleFonts.montserrat(
                    textStyle:TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0,1.5),
                        blurRadius: 1.5,
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [Color(0xFFF4B326), Color(0xFFF29428)]),
                    ),
                  child: Text(
                    "Sepete Ekle",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        color:Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
