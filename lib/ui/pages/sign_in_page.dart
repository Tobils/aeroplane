import 'package:aeroplane/cubit/auth_cubit.dart';
import 'package:aeroplane/shared/theme.dart';
import 'package:aeroplane/ui/widgets/custom_button.dart';
import 'package:aeroplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

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
        return CustomTextFormField(
          title: "Your Email Address",
          hint: "john.doe@gmail.com",
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: "Password",
          hint: "******",
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: kRedColor,
                content: Text(state.error),
              ));
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomButton(
              onPressed: () {
                context.read<AuthCubit>().signIn(
                    email: emailController.text,
                    password: passwordController.text);
              },
              title: "Sign In",
              margin: const EdgeInsets.only(top: 10),
            );
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: defaultMargin),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget signupButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-up', (context) => false);
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            "Don't have an account ? Sign Up",
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            signupButton(),
          ],
        ),
      ),
    );
  }
}
