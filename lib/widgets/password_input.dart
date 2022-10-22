import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';


class Password_Input extends StatelessWidget {

  Password_Input({this.label_text, this.password,this.controller_text});

  final String label_text;
  final bool password;
  final controller_text;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        controller: controller_text,
        validator:MultiValidator(
          [
          RequiredValidator(errorText: '* Required'),
          MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
          ],
        ),
        decoration: InputDecoration(
          labelText: label_text,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        obscureText: true,
      ),
    );
  }
}
