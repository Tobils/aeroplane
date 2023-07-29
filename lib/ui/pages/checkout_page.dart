import 'package:aeroplane/shared/theme.dart';
import 'package:aeroplane/ui/widgets/custom_button.dart';
import 'package:aeroplane/ui/widgets/interest_item.dart';
import 'package:aeroplane/ui/widgets/term_and_condition.dart';
import 'package:flutter/material.dart';

import '../widgets/destination_tile.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

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

  Widget itemDetails() {
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
          SizedBox(height: 20),

          // NOTE: booking details
          Text(
            "Booking Details",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),

          SizedBox(height: 10),

          // NOTE: list detail
          Column(
            children: [
              Row(
                children: [
                  InterestItem(title: "Traveler"),
                  Text(
                    "2 person",
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  InterestItem(title: "Seat"),
                  Text(
                    "A3, B3",
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  InterestItem(title: "Insurance"),
                  Text(
                    "YES",
                    style: greenTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  InterestItem(title: "Refundable"),
                  Text(
                    "NO",
                    style: redTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  InterestItem(title: "VAT"),
                  Text(
                    "45%",
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  InterestItem(title: "Price"),
                  Text(
                    "IDR 8.500.690",
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  InterestItem(title: "Grand Total"),
                  Text(
                    "IDR 12.000.000",
                    style: purpleTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 16),
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
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          SizedBox(height: 16),

          // NOTE: BALANCE
          Row(
            children: [
              // NOTE: PAY PLANE
              Container(
                width: 100,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
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
                          image: DecorationImage(
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
    return CustomButton(title: "Pay Now", onPressed: () {});
  }

  @override
  Widget build(BuildContext context) {
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
            itemDetails(),
            paymentDetails(),
            buttonPay(),
            const TermsAndCondition(),
          ],
        ),
      ),
    );
  }
}
