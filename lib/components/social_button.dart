import '/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.social});
  final String social;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder( // Esta línea hace que los bordes sean rectangulares
          borderRadius: BorderRadius.zero, // `BorderRadius.zero` hace que los bordes sean completamente rectos
          ),
        ),        
        child: SizedBox(
            width: Config.widthSize * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'assets/$social.png',
                  width: 40,
                  height: 40,
                ),
                Text(
                  social.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            )
          )
        );
  }
}
