import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0. Available 1. Selected 2. Unavailable
  final int status;

  const SeatItem({super.key, this.status = 2});

  @override
  Widget build(BuildContext context) {
    backgroundColour() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    Widget child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              "YOU",
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();

        default:
          return SizedBox();
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: backgroundColour(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: child(),
    );
  }
}
