import 'package:flutter/material.dart';
import 'package:new_app/theme/colors.dart';

class NewsDetailDivider extends StatelessWidget {
  const NewsDetailDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Divider(
        height: 20,
        thickness: 3,
        color: AppColors.grey,
      ),
    );
  }
}
