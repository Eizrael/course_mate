// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DisabledBtn extends StatefulWidget {
  const DisabledBtn({
    super.key,
    required this.btnText,
    required this.onSubmit,
    required this.btnEnabled,
  });
  final String btnText;
  final Future<void> Function() onSubmit;
  final bool btnEnabled;

  @override
  State<DisabledBtn> createState() => _DisabledBtnState();
}

class _DisabledBtnState extends State<DisabledBtn> {
  bool isLoading = false;

  void handleSubmit () async {
    setState(() {
      isLoading = true;
    });

    await widget.onSubmit();
    setState(() {
      isLoading = false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      width: 320,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
        ),
        onPressed: widget.btnEnabled && !isLoading ? handleSubmit: null,
        
        child: isLoading ? 
          SizedBox(
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          )
          :
          Text(widget.btnText, style: Theme.of(context).textTheme.labelLarge,),
      ),
    );
  }
}

