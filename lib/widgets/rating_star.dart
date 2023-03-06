import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tennis_app/utilities/constant/colors.dart';

class Rating extends StatefulWidget {

 Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    return RatingStars(
      starColor: Appcolor.starcolor,
      value: value,
      onValueChanged: (valu) {
        setState(() {
          value = valu;
        });
      },
    );
  }
}
