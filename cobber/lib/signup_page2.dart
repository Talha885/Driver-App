import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'my_textfield.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController driversLicenseController =
      TextEditingController();
  final TextEditingController driversNICController = TextEditingController();
  final TextEditingController proofOfResidenceController =
      TextEditingController();
  final TextEditingController vehicleModelController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black, // Set the background color to black
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              MyTextField(
                hintText: "Driver's License",
                prefixIcon: Icon(Icons.drive_eta, color: Colors.white),
                controller: driversLicenseController,
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyTextField(
                hintText: "Driver's NIC",
                prefixIcon: Icon(Icons.credit_card, color: Colors.white),
                controller: driversNICController,
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyTextField(
                hintText: 'Proof of Residence',
                prefixIcon: Icon(Icons.home, color: Colors.white),
                controller: proofOfResidenceController,
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyTextField(
                hintText: 'Vehicle Model',
                prefixIcon: Icon(Icons.directions_car, color: Colors.white),
                controller: vehicleModelController,
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyTextField(
                hintText: 'Password',
                obscureText: true,
                prefixIcon: Icon(Icons.lock, color: Colors.white),
                controller: passwordController,
              ),
              SizedBox(height: 10),
              MyTextField(
                hintText: 'Confirm Password',
                obscureText: true,
                prefixIcon: Icon(Icons.lock, color: Colors.white),
                controller: confirmPasswordController,
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(
                        title: 'ggg',
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 226, 255, 4),
                  onPrimary: Colors.black,
                  elevation: 0,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignUpPage(),
  ));
}
