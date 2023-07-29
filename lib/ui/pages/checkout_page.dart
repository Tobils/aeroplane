import 'package:aeroplane/shared/theme.dart';
import 'package:aeroplane/ui/pages/success_checkout_page.dart';
import 'package:aeroplane/ui/widgets/booking_details_item.dart';
import 'package:aeroplane/ui/widgets/custom_button.dart';
import 'package:aeroplane/ui/widgets/interest_item.dart';
import 'package:aeroplane/ui/widgets/term_and_condition.dart';
import 'package:flutter/material.dart';

import '../widgets/destination_tile.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget destination() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 29),
        child: Column(
          children: [
            // NOTES: IMAGE ICON DESTINASI
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              height: 65,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_checkout.png'),
                ),
              ),
            ),

            // NOTES: FROM TO
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // NOTE: FROM
                Column(
                  children: [
                    Text(
                      "CGK",
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "Tangerang",
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),

                // NOTE: TO
                Column(
                  children: [
                    Text(
                      "TLC",
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "Ciliwung",
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: destination
            const DestinationTile(
              imageUrl: 'assets/image_destination6.png',
              name: "Danau Beratan",
              location: "Singajaya",
              rating: 4.4,
            ),

            // NOTE: booking details
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "Booking Details",
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
            ),

            // NOTE: list detail
            const Column(
              children: [
                BookingDetailsItem(
                  title: "Traveler",
                  value: "2 person",
                  valueColor: kBlackColor,
                ),
                BookingDetailsItem(
                  title: "Seat",
                  value: "A3, B3",
                  valueColor: kBlackColor,
                ),
                BookingDetailsItem(
                  title: "Seat",
                  value: "A3, B3",
                  valueColor: kBlackColor,
                ),
                BookingDetailsItem(
                  title: "Insurance",
                  value: "YES",
                  valueColor: kGreenColor,
                ),
                BookingDetailsItem(
                  title: "Refundable",
                  value: "No",
                  valueColor: kRedColor,
                ),
                BookingDetailsItem(
                  title: "VAT",
                  value: "45%",
                  valueColor: kBlackColor,
                ),
                BookingDetailsItem(
                  title: "Price",
                  value: "IDR 8.500.690",
                  valueColor: kBlackColor,
                ),
                BookingDetailsItem(
                  title: "Total",
                  value: "IDR 12.000.000",
                  valueColor: kPrimaryColor,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: TITLE
            Text(
              "Payment Details",
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            SizedBox(height: 16),

            // NOTE: BALANCE
            Row(
              children: [
                // NOTE: PAY PLANE
                Container(
                  width: 100,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_card.png'),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/icon_plane.png'),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: kPrimaryColor.withOpacity(0.5),
                                  blurRadius: 50,
                                  offset: const Offset(0, 10)),
                            ]),
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Pay",
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),

                // NOTE: current balance
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "IDR 80.400.000",
                      style: blackTextStyle.copyWith(
                          fontWeight: medium, fontSize: 18),
                    ),
                    Text(
                      "Current Balance",
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonPay() {
      return CustomButton(
          title: "Pay Now",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SuccessCheckoutPage(),
              ),
            );
          });
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
            destination(),
            bookingDetails(),
            paymentDetails(),
            buttonPay(),
            const TermsAndCondition(),
          ],
        ),
      ),
    );
  }
}
