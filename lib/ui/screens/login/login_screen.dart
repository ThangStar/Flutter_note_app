import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indexed/indexed.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double heightHeaderContainer = 180;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        leading: SvgPicture.asset(
          'assets/images/logo.svg',
        ),
        centerTitle: true,
        title: const Text("Login screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Stack(
          children: [
            Container(
                margin:
                    const EdgeInsets.only(top: heightHeaderContainer * 4 / 5),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onBackground),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 12))),
            Positioned(
              top: 10,
              right: 20,
              left: 20,
              child: Container(
                width: double.infinity,
                height: heightHeaderContainer,
                clipBehavior: Clip.none,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.onBackground),
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 12),
                    child: Container(
                        margin: const EdgeInsets.only(top: 24),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(fontWeight: FontWeight.w600),
                                  "ĐĂNG NHẬP"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      "Đăng nhập vào tài khoản",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              color: const Color(0xFF6750A4)),
                                    ),
                                  ),
                                  const Text(
                                      "Use typography to present your design and content as clearly and efficiently as possible."),
                                ],
                              )
                            ]))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
