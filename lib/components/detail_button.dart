import 'package:flutter/material.dart';
import 'package:new_app/theme/colors.dart';

class NewsDetailButton extends StatelessWidget {
  const NewsDetailButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appColor,
      ),
      onPressed: () {},
      child: const Text(
        'READ MORE',
        style: TextStyle(fontSize: 23),
      ),
    );
  }
}
