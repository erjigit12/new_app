import 'package:flutter/material.dart';
import 'package:new_app/theme/colors.dart';

class NewsDetailDate extends StatelessWidget {
  const NewsDetailDate({
    Key? key,
    required this.time,
  }) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.schedule,
          size: 35,
          color: AppColors.grey,
        ),
        const SizedBox(width: 15),
        Text(
          time,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
