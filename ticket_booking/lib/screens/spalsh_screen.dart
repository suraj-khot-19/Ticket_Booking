import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/bottom_navigation.dart';
import 'package:ticket_booking/utils/app_layouts.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/spacer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();

    Timer(const Duration(seconds: 15), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const BottomNavigation()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor, // LinkedIn's blue color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ScaleTransition(
              scale: _animation,
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/img1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 100)),
          Text(
            "S-Ticket",
            style: AppStyles.blackHeading3,
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 20)),
          const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
