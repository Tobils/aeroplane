import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import 'interest_item.dart';

class BookingDetailsItem extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;

  const BookingDetailsItem({
    super.key,
    required this.title,
    required this.value,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          InterestItem(title: title),
          Text(
            value,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 14,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
