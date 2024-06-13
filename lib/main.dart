import 'package:SampleApp/providers/products/products_provider.dart';
import 'package:SampleApp/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:SampleApp/routes/app_router.dart';
import 'package:SampleApp/theme/colors.dart';
import 'package:SampleApp/theme/text_theme_mulish.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return Builder(
      builder: (context) {
        ScreenUtil.init(
          context,
          designSize: const Size(390, 844),
          minTextAdapt: true,
        );
        return ChangeNotifierProvider(
          create: (context) => ProductProvider(),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Way Whiz',
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                foregroundColor: Colors.white,
                actionsIconTheme: IconThemeData(
                  color: Colors.white,
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.grey,
                  textStyle: TextStyle(color: Colors.black)
                ),
              ),
              snackBarTheme: SnackBarThemeData(
                backgroundColor: Colors.grey,
                contentTextStyle: TextStyle(color: Colors.black)
              ),
              checkboxTheme: CheckboxThemeData(
                checkColor: MaterialStateProperty.all(Colors.white),
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  foregroundColor: Colors.grey.shade100,
                  textStyle: TextStyle(color: Colors.black)
                ),
              ),
              useMaterial3: true,
              textTheme: ThemeData().textTheme,
            ),
            routerConfig: appRouter.config(),
          ),
        );
      },
    );
  }
}