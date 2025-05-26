// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OnboardingCustomBtn extends StatelessWidget {
  const OnboardingCustomBtn({
    super.key,
    required this.textButton,
    required this.onPressed,
  });
  final String textButton;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290,
      height: 55,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(textButton, style: Theme.of(context).textTheme.labelLarge,),
            Icon(
              Icons.skip_next_rounded,
              color: Colors.white,
              size: 35,
            )
          ],
        )
      ),
    );
  }
}
