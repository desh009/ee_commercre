import 'package:ee_commercre/feature/auth/ui/widgets/app_logo.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const String name = '/sign-up';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController __firstNameController = TextEditingController();
  final TextEditingController __lastNameController = TextEditingController();
  final TextEditingController __mobileTEontroller = TextEditingController();
  final TextEditingController __cityTEController = TextEditingController();
  final TextEditingController __adressTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  SizedBox(height: 44),
                  AppLogo(width: 90, height: 90),
                  Text('Register Account', style: textTheme.titleLarge),
                  Text(
                    'Please Enter your details to sign up',
                    style: textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(hintText: 'Email'),
                    validator: (String? value) {
                      String emailValue = value ?? '';
                      if (EmailValidator.validate(emailValue) == false) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: __firstNameController,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(hintText: 'First Name'),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? false) {
                        return 'Please enter a valid first name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: __lastNameController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(hintText: 'Last Name'),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? false) {
                        return 'Please enter a valid last name';
                      }
                      return null;
                    },
                  ),
                  // SizedBox(height: 8),
                  // TextFormField(
                  //   controller: __mobileTEontroller,
                  //   keyboardType: TextInputType.phone,
                  //   textInputAction: TextInputAction.next,

                  //   decoration: InputDecoration(hintText: 'Mobile Number'),
                  //   validator: (String? value) {
                  //     if (value?.trim().isNotEmpty ?? false) {
                  //       return 'Please enter a valid mobile number';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: __cityTEController,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(hintText: 'City'),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? false) {
                        return 'Please enter a valid city';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),

                  TextFormField(
                    controller: _passwordTEController,
                    textInputAction: TextInputAction.done,
                    // obscureText: _obscureText,
                    // obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: "Password",

                      // suffixIcon: IconButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       _obscureText = !_obscureText;
                      //     });
                      //   },
                      //   icon: Icon(
                      //     _obscureText
                      //         ? Icons.visibility_off
                      //         : Icons.visibility,
                      //   ),
                      // ),
                    ),
                    validator: (String? value) {
                      // String passwordValue = value ?? '';
                      // if (passwordValue.isEmpty) {
                      //   return 'Please enter your password';
                      // } else if (passwordValue.length < 6) {
                      //   return 'Password must be at least 6 characters long';
                      // }
                      // return null;
                      if ((value?.length ?? 0) <= 6) {
                        return 'Enter a password more than 6 letters';
                      }
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: __adressTEController,
                    textInputAction: TextInputAction.done,
                    maxLines: 4,

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      hintText: ' Shipping Address',
                    ),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? false) {
                        return 'Please enter a valid address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _onTapLogin,
                    child: Text("Sign Up"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapLogin() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
