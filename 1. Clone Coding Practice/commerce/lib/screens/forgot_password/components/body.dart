import 'package:commerce/components/custom_surfix_icon.dart';
import 'package:commerce/components/default_button.dart';
import 'package:commerce/components/form.error.dart';
import 'package:commerce/constants.dart';
import 'package:commerce/screens/sign_in/components/no_account_text.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign:  TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({ Key? key }) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;
  
  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) && 
                errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (value.isNotEmpty &&
                !emailValidatorRegExp.hasMatch(value) && 
                !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(text: "Continue", press: () {
            if (_formKey.currentState!.validate()) {
              // Do What you want to do
            }
          }),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText(),
        ],
      )
    );
  }
}