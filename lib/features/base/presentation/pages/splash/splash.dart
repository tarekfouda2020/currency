part of 'splash_imports.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final SplashController controller = SplashController();

  @override
  void initState() {
    controller.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextAnimator(
          'Currency App',
          initialDelay: const Duration(milliseconds: 1000),
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: -2,
              fontSize: 28,
            ),
          ),
          incomingEffect: WidgetTransitionEffects.incomingScaleDown(
            duration: const Duration(milliseconds: 600),
          ),
        ),
      ),
    );
  }
}
