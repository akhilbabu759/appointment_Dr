import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/appbar.dart';
import 'widget/profile_card.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          right: 18,
        ),
        child: Column(children: [
          AppBarC(
            tex: 'Book Appointment',
          ),
          ProfileCard()
        ]),
      ),
    );
  }
}

