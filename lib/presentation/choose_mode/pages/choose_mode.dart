import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify_app/core/configs/assets/app_images.dart';
import 'package:flutter_spotify_app/core/configs/assets/app_vectors.dart';
import 'package:flutter_spotify_app/core/configs/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.chooseModeBg),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo)),
                const Spacer(),
                const Text(
                  'Choose Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(48, 57, 60, 0.5),
                              ),
                              child: SvgPicture.asset(AppVectors.moon,
                                  fit: BoxFit.none),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Dark Mode',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(48, 57, 60, 0.5),
                              ),
                              child: SvgPicture.asset(AppVectors.sun,
                                  fit: BoxFit.none),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Light Mode',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ChooseModePage(),
                        ),
                      );
                    },
                    title: 'Continue')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
