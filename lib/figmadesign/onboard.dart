import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_app/figmadesign/onboarding.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: <Widget>[
                // First Page
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      /*  */
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          child: Text(
                            'SKIP',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          onPressed: () {
                            debugPrint('skip page!');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Onboarding(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 90),
                      Image.asset('assets/png/pana.png'),
                      const SizedBox(height: 50),
                      Text(
                        "Swift, Secure, Single \ntouch money transfer",
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.visible,
                        maxLines: null,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Send,Receive, and Track transfers anywhere\nwith Myagadi Remit",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                // Second Page (Example)
                Column(
                  children: [
                    const Center(
                      child: Text(
                        "Onboarding Screen",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        child: Text(
                          'SKIP',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        onPressed: () {
                          debugPrint('skip page!');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Onboarding(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 165,
                    ),
                    Image.asset('assets/png/pana.png'),
                    Text(
                      "Swift, Secure, Single \ntouch money transfer",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                // Third Page (Example)
                Column(
                  children: [
                    const Center(
                      child: Text(
                        "Page 3: Create your account",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        child: Text(
                          'SKIP',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        onPressed: () {
                          debugPrint('skip page!');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Onboarding(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    Image.asset('assets/png/pana.png'),
                    Text(
                      "Swift, Secure, Single \ntouch money transfer",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Page Indicator
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3, // Number of pages
                  effect: const WormEffect(
                    activeDotColor: Colors.red,
                    dotColor: Colors.grey,
                    dotHeight: 16,
                    dotWidth: 15,
                    spacing: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, bottom: 20.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all(const Size(140, 50)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: Text(
                        _currentPage == 2 ? 'FINISH' : 'NEXT',
                        style: const TextStyle(
                          fontSize: 20,
                          //fontFamily: 'karla',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      onPressed: () {
                        if (_currentPage < 2) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Onboarding(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          // NEXT Button
        ],
      ),
    );
  }
}
