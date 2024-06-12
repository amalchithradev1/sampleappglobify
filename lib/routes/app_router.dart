import 'package:auto_route/auto_route.dart';
import 'package:SampleApp/screens/Products/search_screen.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: SplashRoute.page,
      initial: true,
    ),
    AutoRoute(page: HomeRoute.page,),
    AutoRoute(page: SearchRoute.page,),
    // AutoRoute(page: RegistrationRoute.page),
  ];
}