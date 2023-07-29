import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultMargin),
      child: Center(
        child: Text("Terms and Conditions",
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            )),
      ),
    );
  }
}
