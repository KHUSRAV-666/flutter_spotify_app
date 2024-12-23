import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify_app/core/configs/assets/app_images.dart';
import 'package:flutter_spotify_app/core/configs/assets/app_vectors.dart';
import 'package:flutter_spotify_app/core/configs/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBg),
              ),
            ),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo)),
                Spacer(),
                Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                SizedBox(height: 21),
                Text(
                  'Qui occaecat magna nisi elit duis quis excepteur in mollit quis reprehenderit sint eiusmod.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                BasicAppButton(onPressed: () {}, title: 'Get Started')
              ],
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
    );
  }
}
