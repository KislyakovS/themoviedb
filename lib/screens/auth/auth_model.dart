import 'package:flutter/material.dart';
import 'package:pedantic/pedantic.dart';
import 'package:themoviedb/domain/api_client/api_client.dart';
import 'package:themoviedb/domain/data_provider/session_data_provider.dart';
import 'package:themoviedb/screens/home/home_screen.dart';

class AuthModel extends ChangeNotifier {
  final _apiClient = ApiClient();
  final _sessionDataProvider = SessionDataProvider();

  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  String? _messageError;
  String? get messageError => _messageError;

  bool _isAuthProgress = false;
  bool get isAuthProgress => _isAuthProgress;
  bool get canAuth => !_isAuthProgress;

  Future<void> auth(BuildContext context) async {
    final login = loginController.text;
    final password = passwordController.text;

    if (login.isEmpty || password.isEmpty) {
      _messageError = 'Empty fields login or password';
      notifyListeners();
      return;
    }

    _messageError = null;
    _isAuthProgress = true;
    notifyListeners();

    String? sessionId;

    try {
      sessionId = await _apiClient.auth(username: login, password: password);
    } catch (e) {
      _messageError = 'Invalid login or password';
    }

    _isAuthProgress = false;
    notifyListeners();

    if (sessionId != null) {
      _sessionDataProvider.setSessionId(sessionId);
      unawaited(Navigator.pushNamed(context, HomeScreen.routeName));
    }
  }

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
