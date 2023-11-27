import 'package:flutter/material.dart';


class SalanChikenPage extends StatefulWidget {
  const SalanChikenPage ({Key? key}) : super(key: key);

  @override
  _PizzaDetailPageState createState() => _PizzaDetailPageState();
}

class _PizzaDetailPageState extends State<SalanChikenPage> {
  int quantity = 1;

  // Function to handle adding to the cart
  void addToCart() {
    // Implement your logic here
    print("Added to Cart! Quantity: $quantity");
  }

  // Function to handle decreasing the quantity
  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  // Function to handle increasing the quantity
  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Navigate to the home page or perform any other action
            print('Home Button Pressed!');
            Navigator.popUntil(context, (route) => route.isFirst);
          },

        ),

        title: Text('Order List', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true, // Center the title
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Big Pizza Picture
            Image.asset(
              "images/salan.png",
              height: 200,
              width: 200,
            ),
            // 5-star rating
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.star, color: Colors.yellow, size: 30),
              ],
            ),
            // Price and Name
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$20",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Chicken Salan",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            // Description
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  " Chicken Salan is a traditional Emirati tomato stew dish found in Gulf Arab countries, including the United Arab Emirates, which consists of chicken pieces cooked with different vegetables, herbs, and spices. It is rich in flavor which is best to eat with rice or pita bread",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Delivery Time
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time, size: 20),
                    SizedBox(width: 5),
                    Text(
                      "Estimated Delivery Time: 30 minutes",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            // Plus and Minus Buttons with Quantity
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: decrementQuantity,
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 10),
                Text(
                  quantity.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: incrementQuantity,
                  child: Icon(Icons.add),
                ),
              ],
            ),
            // Add to Cart Button
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: addToCart,
              icon: Icon(Icons.shopping_cart),
              label: Text("Add to Cart"),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
