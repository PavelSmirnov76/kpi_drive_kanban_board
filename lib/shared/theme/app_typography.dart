part of 'app_theme.dart';

abstract class AppFonts {
  static const nunito = 'Nunito';
}

class AppTypography {
  const AppTypography();

  static const TextStyle base = TextStyle(
    fontFamily: AppFonts.nunito,
    color: AppColors.black500,
    height: 1,
    fontWeight: FontWeight.w400,
  );

  TextStyle get titleMediumHeavy => base.copyWith(
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w800,
    color: AppColors.white100,
  );

  TextStyle get bodyMedium => base.copyWith(
    fontSize: 15,
    height: 1.3,
    fontWeight: FontWeight.w500,
    color: AppColors.black500,
  );

  TextStyle get bodyRegular => base.copyWith(
    fontSize: 14,
    height: 1.3,
    fontWeight: FontWeight.w400,
    color: AppColors.black500,
  );

  TextStyle get labelMediumSemiBold => base.copyWith(
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: AppColors.white100,
  );

  TextStyle get titleLargeSemiBold => base.copyWith(
    fontSize: 20,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: AppColors.white100,
  );
}
