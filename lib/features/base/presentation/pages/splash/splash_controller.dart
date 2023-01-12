part of 'splash_imports.dart';


class SplashController {

  void init(BuildContext context){
    InitCustomPackages.instance.initCustomWidgets(language: "en");
    Future.delayed(const Duration(milliseconds: 3000),(){
      AutoRouter.of(context).push(const HomeRoute());
    });
  }

}
