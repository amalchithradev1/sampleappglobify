import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle inter = const TextStyle(
  fontFamily: 'Inter',
);

TextStyle displayLarge = TextStyle(
  fontFamily: 'Inter',
  fontSize: 57.0.sp,
  height: 1.12,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextStyle displayMedium = TextStyle(
  fontFamily: 'Inter',
  fontSize: 45.0.sp,
  height: 1.15,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextStyle displaySmall = TextStyle(
  fontFamily: 'Inter',
  fontSize: 36.0.sp,
  height: 1.22,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextStyle headlineLarge = TextStyle(
  fontFamily: 'Inter',
  fontSize: 32.0.sp,
  height: 1.25,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextStyle headlineMedium = TextStyle(
  fontFamily: 'Inter',
  fontSize: 28.0.sp,
  height: 1.28,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextStyle headlineSmall = TextStyle(
  fontFamily: 'Inter',
  fontSize: 24.0.sp,
  height: 1.33,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextStyle titleLarge = TextStyle(
  fontFamily: 'Inter',
  fontSize: 22.0.sp,
  height: 1.27,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextStyle titleMedium = TextStyle(
  fontFamily: 'Inter',
  fontSize: 16.0.sp,
  height: 1.5,
  fontWeight: FontWeight.w500,
  fontVariations: const [FontVariation('wght', 500)],
);

TextStyle titleSmall = TextStyle(
  fontFamily: 'Inter',
  fontSize: 14.0.sp,
  height: 1.42,
  fontWeight: FontWeight.w500,
  fontVariations: const [FontVariation('wght', 500)],
);

TextStyle labelLarge = TextStyle(
  fontFamily: 'Inter',
  fontSize: 14.0.sp,
  height: 1.42,
  fontWeight: FontWeight.w500,
  fontVariations: const [FontVariation('wght', 500)],
);

TextStyle labelMedium = TextStyle(
  fontFamily: 'Inter',
  fontSize: 12.0.sp,
  height: 1.33,
  fontWeight: FontWeight.w500,
  fontVariations: const [FontVariation('wght', 500)],
);

TextStyle labelSmall = TextStyle(
  fontFamily: 'Inter',
  fontSize: 11.0.sp,
  height: 1.45,
  fontWeight: FontWeight.w500,
  fontVariations: const [FontVariation('wght', 500)],
);

TextStyle bodyLarge = TextStyle(
  fontFamily: 'Inter',
  fontSize: 16.0.sp,
  height: 1.5,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextStyle bodyMedium = TextStyle(
  fontFamily: 'Inter',
  fontSize: 14.0.sp,
  height: 1.42,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextStyle bodySmall = TextStyle(
  fontFamily: 'Inter',
  fontSize: 12.0.sp,
  height: 1.33,
  fontWeight: FontWeight.w400,
  fontVariations: const [FontVariation('wght', 400)],
);

TextTheme get interTheme => TextTheme(
  displayLarge: displayLarge,
  displayMedium: displayMedium,
  displaySmall: displaySmall,
  headlineLarge: headlineLarge,
  headlineMedium: headlineMedium,
  headlineSmall: headlineSmall,
  titleLarge: titleLarge,
  titleMedium: titleMedium,
  titleSmall: titleSmall,
  labelLarge: labelLarge,
  labelMedium: labelMedium,
  labelSmall: labelSmall,
  bodyLarge: bodyLarge,
  bodyMedium: bodyMedium,
  bodySmall: bodySmall,
);