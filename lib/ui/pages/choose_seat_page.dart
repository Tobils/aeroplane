import 'package:aeroplane/shared/theme.dart';
import 'package:aeroplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Text(
        "Select Your\nFavorite Seat",
        style: blackTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 24,
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 32),
        child: Row(
          children: [
            // NOTE: AVAILABLE
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_available.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Available',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                )
              ],
            ),

            // NOTE: SELECTED
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  margin: EdgeInsets.only(left: 10, right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_selected.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Selected',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                )
              ],
            ),

            // NOTE: UNAVAILABLE
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  margin: EdgeInsets.only(left: 10, right: 6),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_unavailable.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Unavailable',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        // margin: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 22,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            // NOTE: SEAT INDICATIONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "A",
                      style: greyTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "B",
                      style: greyTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "",
                      style: greyTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "C",
                      style: greyTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "D",
                      style: greyTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // NOTE: SEAT 1
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 2),
                  SeatItem(status: 2),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "1",
                        style: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 0),
                  SeatItem(status: 2),
                ],
              ),
            ),

            // NOTE: SEAT 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 0),
                  SeatItem(status: 0),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "2",
                        style: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 0),
                  SeatItem(status: 2),
                ],
              ),
            ),

            // NOTE: SEAT 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 1),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "3",
                        style: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 0),
                  SeatItem(status: 0),
                ],
              ),
            ),

            // NOTE: SEAT 4
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 0),
                  SeatItem(status: 2),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "4",
                        style: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 0),
                  SeatItem(status: 0),
                ],
              ),
            ),

            // NOTE: SEAT 5
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 0),
                  SeatItem(status: 0),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "5",
                        style: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 2),
                  SeatItem(status: 0),
                ],
              ),
            ),

            // NOTE: SUMMARY
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  // NOTE: selected seat
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your seat',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'A3,B3',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  // NOTE: total
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'IDR 540.000.000',
                        style: purpleTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: CustomButton(
          title: "Continue to Checkout",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChooseSeatPage()));
          },
          width: 170,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      )),
    );
  }
}
