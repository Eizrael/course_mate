import 'package:course_mate/widgets/disabled_btn.dart';
import 'package:course_mate/widgets/email_textfield.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isButtonEnabled = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final email = _controller.text;
      final RegExp emailRegex = RegExp(
        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
      );

      bool isValid = emailRegex.hasMatch(email);

      if (isValid != isButtonEnabled) {
        setState(() {
          isButtonEnabled = isValid;
        });
      }
    });
  }

  Future <void> emailValidation () async {
    final email = _controller.text;

    if (email.isEmpty) {
      return;
    }
    final RegExp emailRegex = RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    );
    if (!emailRegex.hasMatch(email)) {
      return;
    }

    await Future.delayed(Duration(seconds: 1));
    //tproceding to the next step 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 50,),

              Text("What's your email address?", style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center,),
              SizedBox(height: 35,),

              EmailTextfield(
                emailController: _controller,
              ),
              SizedBox(height: 20,),

              DisabledBtn(
                btnText: 'Continue',
                onSubmit: emailValidation,
                btnEnabled: isButtonEnabled
              ),

              SizedBox(height: 50,),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('or continue with', style: Theme.of(context).textTheme.labelMedium,),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                ],
                )
            ],
          ),
        ),
      ),
    );
  }
}