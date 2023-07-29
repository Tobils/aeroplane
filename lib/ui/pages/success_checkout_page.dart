import 'package:aeroplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // IMAGE
            Container(
              height: 150,
              margin: const EdgeInsets.only(bottom: 80),
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_success.png'))),
            ),

            // bookeed
            Text(
              "Well Booked 😍 ",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 32,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Are you ready to explore the new\nworld of experiences?",
              style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),

            Container(
              padding: const EdgeInsets.only(
                left: 37,
                right: 37,
                top: 50,
              ),
              child: CustomButton(
                title: "My Bookings",
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main', (route) => false);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
