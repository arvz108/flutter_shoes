import 'package:flutter/material.dart';
import 'package:flutter_shoes/pages/home_page.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomePageShoes()),
                );
                print('Home Icon');
              },
              icon: const Icon(
                Icons.house,
                size: 36,
              ), // Icon
            ), // IconButton
            Container(
              height: double.infinity,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                  child: Center(
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ), // Center
                            ), // Container
                          ), // Center
                        ),
                      ), // Center
                    ),
                  ), // Center
                ), // Container
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomePageShoes()),
                );
                print('Profile');
              },
              icon: const Icon(
                Icons.person_outline_outlined,
                size: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
