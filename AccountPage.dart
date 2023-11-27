import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _agreedToTerms = false;
  String _selectedCountry = 'Select Country'; // Default value

  List<String> countries = [
    'Select Country',
    'Akkar',
    'Beirut',
    'Halba',
    'Saida',
    'Jouniyeh',
    // Add more countries as needed
  ];

  void _register() {
    // Check if the user agreed to terms
    if (!_agreedToTerms) {
      // Show an error or display a message indicating that the terms must be agreed to
      print('Please agree to the terms and conditions.');
      return;
    }

    // Implement your user registration logic here
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    // Add your registration logic here
    // For simplicity, we'll just print the registration details for now
    print('Username: $username, Email: $email, Password: $password, Country: $_selectedCountry');

    // Add logic to navigate to the next page after successful registration
    // For now, we'll just print a message
    print('Registration successful!');
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Checkbox(
                  value: _agreedToTerms,
                  onChanged: (value) {
                    setState(() {
                      _agreedToTerms = value!;
                    });
                  },
                ),
                Text('I agree to the terms and conditions'),
              ],
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: _selectedCountry,
              onChanged: (value) {
                setState(() {
                  _selectedCountry = value!;
                });
              },
              items: countries.map((String country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _register,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
