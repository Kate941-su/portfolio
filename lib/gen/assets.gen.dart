/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsSnsGen get sns => const $AssetsIconsSnsGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cat.jpg
  AssetGenImage get cat => const AssetGenImage('assets/images/cat.jpg');

  /// File path: assets/images/dart_package.png
  AssetGenImage get dartPackage =>
      const AssetGenImage('assets/images/dart_package.png');

  /// File path: assets/images/face_photo.jpg
  AssetGenImage get facePhoto =>
      const AssetGenImage('assets/images/face_photo.jpg');

  /// File path: assets/images/green.png
  AssetGenImage get green => const AssetGenImage('assets/images/green.png');

  /// File path: assets/images/portfolio.png
  AssetGenImage get portfolio =>
      const AssetGenImage('assets/images/portfolio.png');

  /// File path: assets/images/room.jpg
  AssetGenImage get room => const AssetGenImage('assets/images/room.jpg');

  /// File path: assets/images/simple_blood_pressure.png
  AssetGenImage get simpleBloodPressure =>
      const AssetGenImage('assets/images/simple_blood_pressure.png');

  /// File path: assets/images/swift_package.png
  AssetGenImage get swiftPackage =>
      const AssetGenImage('assets/images/swift_package.png');

  /// File path: assets/images/yoga.jpg
  AssetGenImage get yoga => const AssetGenImage('assets/images/yoga.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        cat,
        dartPackage,
        facePhoto,
        green,
        portfolio,
        room,
        simpleBloodPressure,
        swiftPackage,
        yoga
      ];
}

class $AssetsIconsSnsGen {
  const $AssetsIconsSnsGen();

  /// File path: assets/icons/sns/github.svg
  SvgGenImage get github => const SvgGenImage('assets/icons/sns/github.svg');

  /// File path: assets/icons/sns/linkedin.svg
  SvgGenImage get linkedin =>
      const SvgGenImage('assets/icons/sns/linkedin.svg');

  /// File path: assets/icons/sns/x.svg
  SvgGenImage get x => const SvgGenImage('assets/icons/sns/x.svg');

  /// List of all assets
  List<SvgGenImage> get values => [github, linkedin, x];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
