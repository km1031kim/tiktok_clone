import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/authentication/widgets/form_button.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, String> formData = {};

  void _onSubmitTap() {
    if (_formKey.currentContext != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        //print(formData.entries);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('log in')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size36),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Gaps.h28,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
                validator: (value) {
                  // value는 TextFormField의 값임.
                  // 에러 메세지를 반환하거나 안 할 수 있음
                  return null;
                },
                onSaved: (newValue) => {
                  if (newValue != null) {formData['email'] = newValue}
                },
              ),
              Gaps.v16,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                validator: (value) {
                  // value는 TextFormField의 값임.
                  // 에러 메세지를 반환하거나 안 할 수 있음
                  return null;
                },
                onSaved: (newValue) => {
                  if (newValue != null) {formData['password'] = newValue}
                },
              ),
              Gaps.v16,
              GestureDetector(
                onTap: _onSubmitTap,
                child: const FormButton(
                  disabled: false,
                  text: "Log in",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
