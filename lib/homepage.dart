import 'package:burger_shop/screens/burgerScreen.dart';
import 'package:burger_shop/widgets/foodContainer.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141414),
      appBar: AppBar(
        backgroundColor: Color(0xFF141414),
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(width: 20.0),
          Icon(Icons.person_outline),
          SizedBox(width: 20.0),
          Icon(Icons.bookmark_border),
          SizedBox(width: 20.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Burger Evi",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 14,
                    color: Color(0xFFF6491E),
                    fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(width: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  FoodContainer(
                      imagePath: 'assets/1.png',
                      name: "Max Burger",
                      price: '\₺25.99'),
                  SizedBox(width: 20.0),
                  FoodContainer(
                      imagePath: 'assets/2.png',
                      name: "Köfte Burger",
                      price: '\₺ 15.99'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => BurgerScreen()),
                          ));
                    },
                    child: FoodContainer(
                        imagePath: 'assets/3.png',
                        name: 'Dabadaba Burger',
                        price: '\₺21.00'),
                  ),
                  SizedBox(height: 20.0),
                  FoodContainer(
                      imagePath: 'assets/4.png',
                      name: 'Double Burger',
                      price: '\₺27.00'),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
