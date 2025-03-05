import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../features/home/presentation/pages/home_page.dart';
import '../../core.dart';
import '../tab_navbar.dart';
import 'onbording.dart';

final PageController _pageController = PageController();

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;

  List<Widget> _buildPages(context) {
    final localizations = AppLocalizations.of(context)!;
    return [
      onbordingBuildPage(
        context: context,
        imagePath: ONBORDING_FIRST,
        title: localizations.onboarding_title1,
        subtitle: localizations.onboarding_subtitle1,
      ),
      onbordingBuildPage(
        context: context,
        imagePath: ONBORDING_SECOND,
        title: localizations.onboarding_title2,
        subtitle: localizations.onboarding_subtitle2,
      ),
      onbordingBuildPage(
        context: context,
        imagePath: ONBORDING_THIRD,
        title: localizations.onboarding_title3,
        subtitle: localizations.onboarding_subtitle3,
      ),
    ];
  }

  Future<void> _completeOnboarding() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setBool('isShowOnboarding', true); // Set onboarding flag to true
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>  HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      body: Column(
        children: [
          //********* skip button at top **********/
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 40, right: 16),
              child: TextButton(
                onPressed: _completeOnboarding,
                child: Text(localizations.skip),
              ),
            ),
          ),

          //********* Page view with image and title **********/
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: _buildPages(context),
            ),
          ),

          //********* DOT PAGE INDICATOR **********/
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _buildPages(context).length,
                (index) => onbordingBuildDot(
                  index: index,
                  currentPage: _currentPage,
                  context: context,
                ),
              ),
            ),
          ),

          //********* Bottom section with next or start button **********/
          Padding(
            padding: EdgeInsets.only(bottom: 30.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_currentPage == _buildPages(context).length - 1) {
                    _completeOnboarding();
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ), // Padding around the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // Rounded corners
                  ),
                ),
                child: Text(
                  _currentPage == _buildPages(context).length - 1
                      ? localizations.started
                      : localizations.next,
                  style:  Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
