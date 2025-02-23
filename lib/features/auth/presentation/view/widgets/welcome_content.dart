import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/features/auth/presentation/view/widgets/get_started_button.dart';
import 'package:bookly_app/features/auth/presentation/view/widgets/register_button.dart';
import 'package:bookly_app/features/auth/presentation/view/widgets/welcome_view_body.dart';
import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WelcomeBackground(),

        Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Read more and stress less with our online book shopping app. Shop from h you are and discover titles that you love. Happy reading!',
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(flex: 2),
        GetStartedButton(),
        Spacer(flex: 1),

        RegisterButton(),
        Spacer(flex: 2),
      ],
    );
  }
}

class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(Assets.welcomeBookCover),
        ),
      ),
    );
  }
}
