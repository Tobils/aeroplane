import 'package:aeroplane/shared/theme.dart';
import 'package:aeroplane/ui/pages/choose_seat_page.dart';
import 'package:aeroplane/ui/widgets/custom_button.dart';
import 'package:aeroplane/ui/widgets/interest_item.dart';
import 'package:aeroplane/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image_destination1.png"))),
      );
    }

    Widget customeShadow() {
      return Container(
        height: 214,
        margin: EdgeInsets.only(top: 235),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kWhiteColor.withOpacity(0),
            kBlackColor.withOpacity(0.95),
          ],
        )),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            // NOTE: EMBLEM
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),

            // NOTE: TITLE
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lake Ciliwung",
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4.0',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            // NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // NOTE: ABOUT
                    Text(
                      "About",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali",
                      style: blackTextStyle.copyWith(height: 2),
                    ),
                    SizedBox(height: 20),

                    // NOTE: PHOTOS
                    Text(
                      "Photos",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        PhotoItem(imageUrl: 'assets/image_photo1.png'),
                        PhotoItem(imageUrl: 'assets/image_photo2.png'),
                        PhotoItem(imageUrl: 'assets/image_photo3.png'),
                      ],
                    ),
                    SizedBox(height: 20),

                    // NOTE: INTERESTS
                    Text(
                      "Interests",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        InterestItem(title: "Kids Park"),
                        InterestItem(title: "Honor Bridge"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InterestItem(title: "City Museum"),
                        InterestItem(title: "Centrall Mall"),
                      ],
                    )
                  ]),
            ),

            // NOTE: PRICE AND BOOK BUTTON
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  // NOTE: PRICE
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IDR 2.500.000",
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "per orang",
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  // NOTE: BOOK BUTTON
                  CustomButton(
                    title: "Book Now",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseSeatPage()));
                    },
                    width: 170,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(children: [
          backgroundImage(),
          customeShadow(),
          content(),
        ]),
      ),
    );
  }
}
