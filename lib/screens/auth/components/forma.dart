import 'package:flutter/material.dart';
import 'package:themoviedb/screens/bottom_navigation/bottom_navigation_screen.dart';

import '../auth_model.dart';

class Forma extends StatelessWidget {
  Forma({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final model = AuthProvider.read(context)?.model;

    const primeColor = Color(0xFF2bb4e4);
    const textStyle = TextStyle(fontSize: 16, color: Color(0xFF212529));
    final textFieldDecoration = InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: primeColor,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _MessageError(),
        const Text(
          'Username',
          style: textStyle,
        ),
        TextField(
          controller: model?.loginController,
          textInputAction: TextInputAction.next,
          decoration: textFieldDecoration,
        ),
        const SizedBox(height: 16),
        const Text(
          'Password',
          style: textStyle,
        ),
        TextField(
          controller: model?.passwordController,
          obscureText: true,
          decoration: textFieldDecoration,
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            const _LoginBtn(),
            const SizedBox(width: 25),
            TextButton(
              onPressed: () => model?.register(context),
              child: const Text(
                'Reset password',
                style: TextStyle(color: primeColor),
              ),
            )
          ],
        )
      ],
    );
  }
}

class _MessageError extends StatelessWidget {
  const _MessageError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = AuthProvider.watch(context)?.model;
    final messageError = model?.messageError;

    if (messageError == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        messageError,
        style: const TextStyle(color: Colors.red),
      ),
    );
  }
}

class _LoginBtn extends StatelessWidget {
  const _LoginBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = AuthProvider.watch(context)?.model;
    final onPressed =
        model?.canAuth != null ? () => model?.auth(context) : null;

    final child = model?.isAuthProgress == true
        ? const SizedBox(
            width: 15,
            height: 15,
            child: CircularProgressIndicator(),
          )
        : const Text(
            'Login',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          );

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 19, vertical: 6),
        ),
        backgroundColor: MaterialStateProperty.all(const Color(0xFF2bb4e4)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
      child: child,
    );
  }
}

// class Forma extends StatefulWidget {
//   @override
//   _FormaState createState() => _FormaState();
// }

// class _FormaState extends State<Forma> {
//   final _loginController = TextEditingController();
//   final _passwordController = TextEditingController();
//   String? messageError;

//   void _auth() {
//     final login = _loginController.text;
//     final password = _passwordController.text;

//     if (login.isNotEmpty && password.isNotEmpty) {
//       Navigator.of(context)
//           .pushReplacementNamed(BottomNavigationScreen.routeName);
//     } else {
//       setState(() {
//         messageError = 'Wrong login or password';
//       });
//     }
//   }

//   void _resetPassword() {}

//   @override
//   Widget build(BuildContext context) {
//     const primeColor = Color(0xFF2bb4e4);
//     const textStyle = TextStyle(fontSize: 16, color: Color(0xFF212529));
//     final textFieldDecoration = InputDecoration(
//       contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(5),
//       ),
//       focusedBorder: const OutlineInputBorder(
//         borderSide: BorderSide(
//           color: primeColor,
//         ),
//       ),
//     );

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (messageError != null) ...[
//           Text(
//             messageError!,
//             style: const TextStyle(color: Colors.red),
//           ),
//           const SizedBox(height: 20),
//         ],
//         const Text(
//           'Username',
//           style: textStyle,
//         ),
//         TextField(
//           controller: _loginController,
//           textInputAction: TextInputAction.next,
//           decoration: textFieldDecoration,
//         ),
//         const SizedBox(height: 16),
//         const Text(
//           'Password',
//           style: textStyle,
//         ),
//         TextField(
//           controller: _passwordController,
//           obscureText: true,
//           decoration: textFieldDecoration,
//         ),
//         const SizedBox(height: 30),
//         Row(
//           children: [
//             ElevatedButton(
//               onPressed: _auth,
//               style: ButtonStyle(
//                 padding: MaterialStateProperty.all(
//                   const EdgeInsets.symmetric(horizontal: 19, vertical: 6),
//                 ),
//                 backgroundColor: MaterialStateProperty.all(primeColor),
//                 shape: MaterialStateProperty.all(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                 ),
//               ),
//               child: const Text(
//                 'Login',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(width: 25),
//             TextButton(
//               onPressed: _resetPassword,
//               child: const Text(
//                 'Reset password',
//                 style: TextStyle(color: primeColor),
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
