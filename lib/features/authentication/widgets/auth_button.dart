import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/cbtest.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/authentication/email_screen.dart';
import 'package:tiktok_clone/features/authentication/login_screen.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final FaIcon icon;
  final Widget widget;

  // 함수 전달받기. 페이지 설정
  // 함수로 context 전달?
  // FractionallySizedBox를 GestureDetector로 감싸기.

  const AuthButton({
    super.key,
    required this.text,
    required this.icon,
    required this.widget,

    //required this.page,
  });

  void testFunction(BuildContext context, Widget test) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => test,
    ));
  }

  @override
  Widget build(BuildContext context) {
    //print(cbInstance.performCallback('ddd'));
    return GestureDetector(
      // onTap 시 전달받은 인자로 페이지 이동.
      onTap: () => testFunction(context, widget),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          padding: const EdgeInsets.all(
            Sizes.size14,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
              width: Sizes.size1,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: icon,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
