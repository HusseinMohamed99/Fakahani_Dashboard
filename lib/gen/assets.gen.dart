/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Cairo-Black.ttf
  String get cairoBlack => 'assets/fonts/Cairo-Black.ttf';

  /// File path: assets/fonts/Cairo-Bold.ttf
  String get cairoBold => 'assets/fonts/Cairo-Bold.ttf';

  /// File path: assets/fonts/Cairo-ExtraBold.ttf
  String get cairoExtraBold => 'assets/fonts/Cairo-ExtraBold.ttf';

  /// File path: assets/fonts/Cairo-ExtraLight.ttf
  String get cairoExtraLight => 'assets/fonts/Cairo-ExtraLight.ttf';

  /// File path: assets/fonts/Cairo-Light.ttf
  String get cairoLight => 'assets/fonts/Cairo-Light.ttf';

  /// File path: assets/fonts/Cairo-Medium.ttf
  String get cairoMedium => 'assets/fonts/Cairo-Medium.ttf';

  /// File path: assets/fonts/Cairo-Regular.ttf
  String get cairoRegular => 'assets/fonts/Cairo-Regular.ttf';

  /// File path: assets/fonts/Cairo-SemiBold.ttf
  String get cairoSemiBold => 'assets/fonts/Cairo-SemiBold.ttf';

  /// List of all assets
  List<String> get values => [
        cairoBlack,
        cairoBold,
        cairoExtraBold,
        cairoExtraLight,
        cairoLight,
        cairoMedium,
        cairoRegular,
        cairoSemiBold
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Camera.svg
  String get camera => 'assets/images/Camera.svg';

  /// File path: assets/images/Check_icon.svg
  String get checkIcon => 'assets/images/Check_icon.svg';

  /// File path: assets/images/ImageProfileTest.png
  AssetGenImage get imageProfileTest =>
      const AssetGenImage('assets/images/ImageProfileTest.png');

  /// File path: assets/images/background_image.svg
  String get backgroundImage => 'assets/images/background_image.svg';

  /// File path: assets/images/box.svg
  String get box => 'assets/images/box.svg';

  /// File path: assets/images/empty-wallet.svg
  String get emptyWallet => 'assets/images/empty-wallet.svg';

  /// File path: assets/images/global.svg
  String get global => 'assets/images/global.svg';

  /// File path: assets/images/heart.svg
  String get heart => 'assets/images/heart.svg';

  /// File path: assets/images/image.svg
  String get image => 'assets/images/image.svg';

  /// File path: assets/images/info-circle.svg
  String get infoCircle => 'assets/images/info-circle.svg';

  /// File path: assets/images/logout.svg
  String get logout => 'assets/images/logout.svg';

  /// File path: assets/images/magicpen.svg
  String get magicpen => 'assets/images/magicpen.svg';

  /// File path: assets/images/notification.svg
  String get notification => 'assets/images/notification.svg';

  /// File path: assets/images/profile_image.png
  AssetGenImage get profileImage =>
      const AssetGenImage('assets/images/profile_image.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// File path: assets/images/splash_android12.png
  AssetGenImage get splashAndroid12 =>
      const AssetGenImage('assets/images/splash_android12.png');

  /// File path: assets/images/user.svg
  String get user => 'assets/images/user.svg';

  /// List of all assets
  List<dynamic> get values => [
        camera,
        checkIcon,
        imageProfileTest,
        backgroundImage,
        box,
        emptyWallet,
        global,
        heart,
        image,
        infoCircle,
        logout,
        magicpen,
        notification,
        profileImage,
        splash,
        splashAndroid12,
        user
      ];
}

class Assets {
  Assets._();

  static const String aEnv = '.env';
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const String shorebird = 'shorebird.yaml';

  /// List of all assets
  static List<String> get values => [aEnv, shorebird];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
