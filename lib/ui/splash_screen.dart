import 'package:flutter/material.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  bool _isFaded = false;
  @override
  Widget build(BuildContext context) {
      Future.delayed(Duration.zero, () {
        setState(() {
          this._isFaded = true;
        });
      });

    return FullSizeBox(
      child: ColoredBox(
          color: Color.fromRGBO(18, 40, 61, 1),
          child: Center(
            child: AnimatedOpacity(
              opacity: _isFaded ? 1 : 0,
              duration: const Duration(milliseconds: 1500),
              child: Text(
                'Smart Home',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
            )
          )
      ),
    );
  }
}
