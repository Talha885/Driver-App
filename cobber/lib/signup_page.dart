import 'package:cobber/signup_page2.dart';
import 'package:flutter/material.dart';
import 'my_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/forth.jpg',
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 260),
                      MyTextField(
                        controller: firstNameController,
                        hintText: 'First Name',
                        obscureText: false,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      MyTextField(
                        controller: lastNameController,
                        hintText: 'Last Name',
                        obscureText: false,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 14),
                      MyTextField(
                        controller: addressController,
                        hintText: 'Gender',
                        obscureText: false,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      MyTextField(
                        controller: cityController,
                        hintText: 'Country',
                        obscureText: false,
                        prefixIcon: Icon(
                          Icons.public,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MyTextField(
                        controller: phoneController,
                        hintText: 'Phone',
                        obscureText: false,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 13),
                      MyTextField(
                        controller: emailController,
                        hintText: 'Email',
                        obscureText: false,
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 100),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: GestureDetector(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                // Form fields are valid, proceed
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpPage(),
                                  ),
                                );
                              }
                            },
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.yellow,
                              size: 34,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignupScreen(),
  ));
}
