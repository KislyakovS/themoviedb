import 'package:flutter/material.dart';

class AuthModel extends ChangeNotifier {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  String? _messageError;
  String? get messageError => _messageError;

  bool _isAuthProgress = false;
  bool get canAuth => !_isAuthProgress;

  Future<void> auth(BuildContext context) async {}

  Future<void> register(BuildContext context) async {}
}

class AuthProvider extends InheritedNotifier {
  final AuthModel model;

  const AuthProvider({
    Key? key,
    required Widget child,
    required this.model,
  }) : super(key: key, child: child, notifier: model);

  static AuthProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AuthProvider>();
  }

  static AuthProvider? read(BuildContext context) {
    final widget =
        context.getElementForInheritedWidgetOfExactType<AuthProvider>()?.widget;

    return widget is AuthProvider ? widget : null;
  }
}
