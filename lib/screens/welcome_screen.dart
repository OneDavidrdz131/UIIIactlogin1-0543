import 'package:flutter/material.dart';
import 'package:uiiiactlogin0543/screens/signin_screen.dart';
import 'package:uiiiactlogin0543/screens/signup_screen.dart';
import 'package:uiiiactlogin0543/theme/theme.dart';
import 'package:uiiiactlogin0543/widgets/custom_scaffold.dart';
import 'package:uiiiactlogin0543/widgets/welcome_button.dart';

class BienvenidoAlapantalla extends StatelessWidget {
  const BienvenidoAlapantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Bienvenido a Ford Mexico!\n',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text: '\nInicia sesion o Registrate',
                            style: TextStyle(fontSize: 20, color: Colors.white
                                // height: 0,
                                ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Iniciar Sesion',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Registratre',
                      onTap: const SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
