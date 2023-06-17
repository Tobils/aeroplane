import 'package:aeroplane/shared/theme.dart';
import 'package:aeroplane/ui/widgets/custom_button.dart';
import 'package:aeroplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get\n your next journey",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return const CustomTextFormField(
          title: "Your Email Address",
          hint: "john.doe@gmail.com",
        );
      }

      Widget nameInput() {
        return const CustomTextFormField(
          title: "Full Name",
          hint: "John Doe",
        );
      }

      Widget passwordInput() {
        return const CustomTextFormField(
          title: "Password",
          hint: "******",
          obscureText: true,
        );
      }

      Widget hobbyInput() {
        return const CustomTextFormField(
          title: "Hobby",
          hint: "Photographer",
        );
      }

      Widget getStartedButton() {
        return CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
          title: "Get Started",
          margin: const EdgeInsets.only(top: 10),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            getStartedButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          "Terms and Conditions",
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        )));
  }
}
