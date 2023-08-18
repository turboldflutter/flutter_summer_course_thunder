import 'package:day_17_flutter/components/text_field_input.dart';
import 'package:day_17_flutter/resources/auth_methods.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (result == 'success') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      print('Logged in');
    } else {
      print('Not logged in');
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(),
                  ),
                  Text('iCodegram'),
                  SizedBox(height: 64),
                  TextFieldInput(
                      hintText: 'Enter your email',
                      isPassword: false,
                      textEditingController: _emailController,
                      textInputType: TextInputType.text),
                  SizedBox(height: 24),
                  TextFieldInput(
                      hintText: 'Enter your password',
                      isPassword: true,
                      textEditingController: _passwordController,
                      textInputType: TextInputType.text),
                  SizedBox(height: 64),
                  InkWell(
                    onTap: loginUser,
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          color: Colors.blue),
                      child: _isLoading
                          ? Center(
                              child: CircularProgressIndicator(
                                  color: Colors.white))
                          : Text('Нэвтрэх'),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Flexible(
                    child: Container(),
                    flex: 2,
                  ),
                ],
              ))),
    );
  }
}
