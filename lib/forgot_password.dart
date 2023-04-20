import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:email_validator/email_validator.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTapUp: (details) {
                    Navigator.pop(context);
                  },
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: SvgPicture.asset(
                        'assets/svg/arrow-left.svg',
                        semanticsLabel: 'Retour en arrière',
                        width: 20,
                        fit: BoxFit.scaleDown,
                      )),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                    'Forgot password',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(height: 70),
                Text(
                  "Please, enter your email address. You will receive a link to create a new password via email.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Card(
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      validator: (value) {
                        print('value : ${value.toString()}');
                        if (value == null ||
                            value.isEmpty ||
                            !EmailValidator.validate(value.toString())) {
                          return 'Not a valid email address. Should be your@email.com';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Email',
                          floatingLabelStyle: const TextStyle(height: 3),
                          contentPadding: EdgeInsets.only(left: 15, right: 15)),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                    width: double.infinity,
                    child: FilledButton(
                        onPressed: () {
                          _formKey.currentState!.validate();
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.red)),
                        child: Container(
                          child: Text(
                            "Send".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 1),
                          ),
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                        ))),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
