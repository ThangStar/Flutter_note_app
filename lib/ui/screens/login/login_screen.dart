import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:note_app/ui/widgets/my_button.dart';
import 'package:note_app/ui/widgets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const double heightHeaderContainer = 160;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 16),
      //     child: SvgPicture.asset(
      //       'assets/images/logo.svg',
      //     ),
      //   ),
      //   centerTitle: true,
      //   title: const Text("Login screen"),
      // ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              leading: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                ),
              ),
              centerTitle: true,
              title: const Text("Login screen"),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                  margin:
                      const EdgeInsets.only(top: heightHeaderContainer * 4 / 5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    border: Border.all(
                        color: Theme.of(context).colorScheme.onBackground),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: heightHeaderContainer * 2 / 5),
                      child: contentLogin())),
              Positioned(
                top: 10,
                right: 20,
                left: 20,
                child: Container(
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
                          margin: const EdgeInsets.only(top: 16),
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
      ),
    );
  }

  Widget contentLogin() {
    TextEditingController txtControllerUsername =
        TextEditingController(text: "");
    TextEditingController txtControllerPassword =
        TextEditingController(text: "");
    return Column(
      children: [
        MyTextField(
          textController: txtControllerUsername,
          label: 'Tài khoản',
          hintText: 'Nhập tài khoản',
        ),
        const SizedBox(
          height: 12,
        ),
        MyTextField(
          textController: txtControllerPassword,
          hintText: 'Nhập mật khẩu',
          label: 'Mật khẩu',
        ),
        const SizedBox(
          height: 16,
        ),
        const MyButton(
          label: "Đăng nhập",
        ),
        const SizedBox(
          height: 14,
        ),
        const Text("Quên mật khẩu"),
        const SizedBox(
          height: 8,
        ),
        const Text("- Hoặc đăng nhập bằng -"),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(height: 48, width: 48, "assets/images/google.svg"),
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
                height: 48, width: 48, "assets/images/facebook.svg")
          ],
        ),
      ],
    );
  }
}
