import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/sizes.dart';
import '../models/on_boarding_model.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });


  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset(model.image, height: size.height / 2),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
