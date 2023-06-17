import 'package:aeroplane/shared/theme.dart';
import 'package:aeroplane/ui/widgets/destination_card.dart';
import 'package:aeroplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nKezia Anne",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Where to fly today?",
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                imageUrl: 'assets/image_destination1.png',
                name: 'Lake Ciliwung',
                location: 'Tangerang',
                rating: 4.5,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination2.png',
                name: 'White House',
                location: 'Spain',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination3.png',
                name: 'Hill Heyo',
                location: 'Monaco',
                rating: 4.9,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination4.png',
                name: 'Tokyo',
                location: 'Japan',
                rating: 4.9,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination6.png',
              name: "Danau Beratan",
              location: "Singajaya",
              rating: 4.4,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination7.png',
              name: "Danau Beratan",
              location: "Singajaya",
              rating: 4.4,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination8.png',
              name: "Danau Beratan",
              location: "Singajaya",
              rating: 4.4,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination9.png',
              name: "Danau Beratan",
              location: "Singajaya",
              rating: 4.4,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination10.png',
              name: "Danau Beratan",
              location: "Singajaya",
              rating: 4.4,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
