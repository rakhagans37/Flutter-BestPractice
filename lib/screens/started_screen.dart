import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan_1/theme.dart';

class StarterScreen extends StatefulWidget {
  const StarterScreen({super.key});

  static const String routeName = '/';

  @override
  State<StarterScreen> createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen> {
  Widget button() {
    return TextButton(
      onPressed: () {},
      child: Text('Get Started',
          style: whiteTextStyle.copyWith(fontWeight: FontWeight.w600)),
    );
  }

  Widget image() {
    return Image.asset(
      'assets/coffee.jpg',
      height: 500,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget footer() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text('Coffee so Good, your taste buds will love it',
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(
                  fontSize: 40, fontWeight: FontWeight.w600)),
          const SizedBox(height: 14),
          Text('The best grain, the finest roast, the powerful flavor',
              textAlign: TextAlign.center,
              style: secondaryTextStyle.copyWith(fontSize: 16)),
          const SizedBox(height: 14),
          Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: button())
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: SingleChildScrollView(
          child: Column(
            children: [image(), footer()],
          ),
        ));
  }
}
