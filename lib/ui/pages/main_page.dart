import 'dart:ffi';

import 'package:aeroplane/cubit/page_cubit.dart';
import 'package:aeroplane/shared/theme.dart';
import 'package:aeroplane/ui/pages/home_page.dart';
import 'package:aeroplane/ui/pages/setting_page.dart';
import 'package:aeroplane/ui/pages/transaction_page.dart';
import 'package:aeroplane/ui/pages/wallet_page.dart';
import 'package:aeroplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: "assets/icon_home.png",
                index: 0,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/icon_book.png",
                index: 1,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/icon_card.png",
                index: 2,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/icon_setting.png",
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: SafeArea(
            child: Stack(children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ]),
          ),
        );
      },
    );
  }
}
