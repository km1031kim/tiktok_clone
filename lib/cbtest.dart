import 'package:flutter/cupertino.dart';

class CallbackClass {
  // 콜백 시그니처를 정의
  final Function(String) callback;

  // 생성자에서 콜백을 받아와 필드에 저장
  CallbackClass(this.callback);

  // 어떤 이벤트가 발생했을 때 이 콜백을 호출
  void performCallback(String msg) {
    // 저장된 콜백 함수 호출
    callback(msg);
  }
}
