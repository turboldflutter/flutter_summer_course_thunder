import 'package:flutter/material.dart';
import 'package:icodegram_app/components/styles/gradiant_text.dart';
import 'package:icodegram_app/pages/sign_up.dart';
import '../components/text_field_input.dart';
import '../resources/auth_methods.dart';
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
                  Text(
                    'iCodegram',
                    style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 36,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 64),
                  TextFieldInput(
                      hintText: 'Нэвтрэх нэр',
                      isPassword: false,
                      textEditingController: _emailController,
                      textInputType: TextInputType.text),
                  SizedBox(height: 24),
                  TextFieldInput(
                      hintText: 'Нууц үг',
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
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: _isLoading
                          ? Center(
                              child: CircularProgressIndicator(
                                  color: Colors.white))
                          : Text("Нэвтрэх",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Эсвэл",
                    style: const TextStyle(
                        fontFamily: "Rubik",
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                        height: 18 / 15),
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 12,
                  ),
                  Flexible(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Шинэ хэрэглэгч үү? ",
                            style: const TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(255, 255, 255, 0.6),
                              height: 18 / 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                            child: Container(
                              child: GradientText("Бүртгүүлэх", 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ))),
    );
  }
}
