import 'package:flutter/material.dart';
import 'package:mobileproject/BiryaniChickenPage.dart';
import 'package:mobileproject/BurgerPage.dart';
import 'package:mobileproject/DrinkPage.dart';
import 'package:mobileproject/SalanChicken.dart';
import 'package:mobileproject/pizzadesc.dart';
class PopularItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
           // for(int i=0 ;i<10 ;i++)
            //Single item
          Padding(padding: EdgeInsets.symmetric(horizontal: 7),
        child: GestureDetector(
          onTap: () {
            // Navigate to BurgerPage when the container is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BurgerPage()),
            );
          },
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ]),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // alignment: alignment.center,
                        child: Image.asset(
                            "images/burger.png",
                             height: 130,
                        ),

                      ),
                      Text(
                        "Hot Burger" ,
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      SizedBox(height: 4),
                      Text(
                        "Taste Our Hot Burger" ,
                        style: TextStyle(
                          fontSize: 15,
                         // fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$10",
                            style: TextStyle(
                            fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ) ,
                          ),
                          Icon(Icons.favorite_border,
                          color: Colors.red,
                            size: 26,
                          )
                        ],
                        ),
                    ],
                  ),
                ) ,
            ),
        )
          ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  // Navigate to BurgerPage when the container is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SalanChikenPage()),
                  );
                },
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // alignment: alignment.center,
                        child: Image.asset(
                          "images/salan.png",
                          height: 130,
                        ),
                      ),
                      Text(
                        "Chicken salan" ,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Taste Our  chicken salan" ,
                        style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                     // SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$10",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ) ,
                          ),
                          Icon(Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          )
                        ],
                      ),
                    ],
                  ),
                ) ,
              ),
            )),
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  // Navigate to BurgerPage when the container is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PizzaDetailPage()),
                  );
                },
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // alignment: alignment.center,
                        child: Image.asset(
                          "images/pizza.png",
                          height: 130,
                        ),
                      ),
                      Text(
                        "Lebanese Pizza " ,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Taste Our Lebanese Pizza" ,
                        style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      //SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$10",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ) ,
                          ),
                          Icon(Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          )
                        ],
                      ),
                    ],
                  ),
                ) ,
              ),
            )),
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  // Navigate to BurgerPage when the container is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DrinkPage()),
                  );
                },
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                         alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          "images/drink.png",
                          height: 120,
                        ),
                      ),
                      Text(
                        "Cold Drink" ,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Taste Cold Drink" ,
                        style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$10",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ) ,
                          ),
                          Icon(Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          )
                        ],
                      ),
                    ],
                  ),
                ) ,
              ),
            )),
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  // Navigate to BurgerPage when the container is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BiryaniChikenPage()),
                  );
                },
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // alignment: alignment.center,
                        child: Image.asset(
                          "images/biryani.png",
                          height: 130,
                        ),
                      ),
                      Text(
                        "Chicken Birayni" ,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Taste Our Chicken Birayani" ,
                        style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                     // SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$10",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ) ,
                          ),
                          Icon(Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          )
                        ],
                      ),
                    ],
                  ),
                ) ,
              ),
            )),




          ],),
      ),
    );
  }
}
