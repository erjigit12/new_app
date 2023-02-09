// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:new_app/theme/colors.dart';

class NewsDetailButton extends StatelessWidget {
  NewsDetailButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appColor,
      ),
      onPressed: onPressed,
      child: const Text(
        'READ MORE',
        style: TextStyle(fontSize: 23),
      ),
    );
  }
}
