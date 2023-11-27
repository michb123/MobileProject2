import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrderPage(),
    );
  }
}

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String selectedFoodOption = 'Hot Pizza';
  List<String> itemsOrdered = [];
  double subtotal = 0.0;
  double deliveryFee = 5.0;

  void updateTotal() {
    subtotal = itemsOrdered.length * 10.0;
    double total = subtotal + deliveryFee;

    setState(() {
      subtotal = subtotal;
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Choose a Food Option:',
              style: TextStyle(fontSize: 18),
            ),
            DropdownButton<String>(
              value: selectedFoodOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedFoodOption = newValue!;
                });
              },
              items: <String>['Hot Pizza', 'Hot Burger', 'Cold Drink', 'Chicken salan' , 'Biryani Chicken']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                itemsOrdered.add(selectedFoodOption);
                updateTotal();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Orange color
              ),
              child: Text('Add to Order'),
            ),
            SizedBox(height: 20),
            Text(
              'Items Ordered:',
              style: TextStyle(fontSize: 18),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: itemsOrdered.map((item) => Text('- $item')).toList(),
            ),
            SizedBox(height: 20),
            Text('Subtotal: \$${subtotal.toStringAsFixed(2)}'),
            Text('Delivery Fee: \$${deliveryFee.toStringAsFixed(2)}'),
            SizedBox(height: 10),
            Text(
              'Total: \$${(subtotal + deliveryFee).toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Order Now Button Pressed!');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Orange color
              ),
              child: Text('Order Now'),
            ),
          ],
        ),
      ),
    );
  }
}