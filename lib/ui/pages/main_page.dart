import 'package:aeroplane/shared/theme.dart';
import 'package:aeroplane/ui/pages/home_page.dart';
import 'package:aeroplane/ui/pages/setting_page.dart';
import 'package:aeroplane/ui/pages/transaction_page.dart';
import 'package:aeroplane/ui/pages/wallet_page.dart';
import 'package:aeroplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return const WalletPage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 30,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(
                18,
              )),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: "assets/icon_home.png",
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/icon_book.png",
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/icon_card.png",
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/icon_setting.png",
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(children: [
          buildContent(),
          customBottomNavigation(),
        ]),
      ),
    );
  }
}
