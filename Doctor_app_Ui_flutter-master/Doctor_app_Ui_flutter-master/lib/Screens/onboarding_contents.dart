import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Find yourself the best Gynecologists",
    image: "assets/images/image1.png",
    desc: "Treatment from the best doctors around the world.",
  ),
  OnboardingContents(
    title: "Schedule online appointments easily",
    image: "assets/images/image2.png",
    desc:
        "Select the specialist and make appointment through our app.",
  ),
  OnboardingContents(
    title: "Find yourself the best Gynecologists",
    image: "assets/images/image3.png",
    desc:
        "Treatment from the best doctors around the world.",
  ),
];
