import 'package:flutter/material.dart';

import '../../../../_core/constants/move.dart';

class JoinButton extends StatelessWidget {
  const JoinButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.deepOrangeAccent,
      ),
      child: InkWell(
        splashColor: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          if (_formKey.currentState!.validate()) {
            Navigator.pushNamed(context, Move.home);
          }
        },
        child: Center(
          child: Text(
            "회원가입",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
