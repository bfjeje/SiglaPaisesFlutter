import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

mixin Mensagem {
  void showMensagem(String msg, context, {int? duration, int? gravity}) {
    ToastContext toastContext = ToastContext();
    toastContext.init(context);
    Toast.show(msg,
        duration: duration ?? Toast.lengthLong,
        gravity: gravity ?? Toast.bottom,
        backgroundColor: Colors.orangeAccent,
        textStyle: const TextStyle(color: Colors.black),
        backgroundRadius: 3.0);
  }
}
