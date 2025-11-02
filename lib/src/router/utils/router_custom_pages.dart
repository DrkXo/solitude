import 'package:flutter/material.dart';

/// A dialog page with Material entrance and exit animations, modal barrier color,
/// and modal barrier behavior (dialog is dismissible with a tap on the barrier).
class DialogPage<T> extends Page<T> {
  final Offset? anchorPoint;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final CapturedThemes? themes;
  final WidgetBuilder builder;

  const DialogPage({
    required this.builder,
    this.anchorPoint,
    this.barrierColor = Colors.black54,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.themes,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  @override
  Route<T> createRoute(BuildContext context) => DialogRoute<T>(
    context: context,
    settings: this,
    builder: builder,
    anchorPoint: anchorPoint,
    barrierColor: barrierColor,
    barrierDismissible: barrierDismissible,
    barrierLabel: barrierLabel,
    useSafeArea: useSafeArea,
    themes: themes,
   );
}

class ModalPage<T> extends Page<T> {
  final bool enableDrag;
  final bool isScrollControlled;
  final bool useSafeArea;
  final bool barrierDismissible;
  final String? barrierLabel;
  final CapturedThemes? capturedThemes;
  final String? barrierOnTapHint;
  final Color? backgroundColor;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip? clipBehavior;
  final BoxConstraints? constraints;
  final Color? modalBarrierColor;
  final bool? showDragHandle;
  final double scrollControlDisabledMaxHeightRatio;
  final bool? requestFocus;
  final Offset? anchorPoint;
  final AnimationStyle? sheetAnimationStyle;
  final WidgetBuilder builder;

  const ModalPage({
    required this.builder,
    required this.isScrollControlled,
    this.enableDrag = true,
    this.useSafeArea = false,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.capturedThemes,
    this.barrierOnTapHint,
    this.backgroundColor,
    this.elevation,
    this.shape,
    this.clipBehavior,
    this.constraints,
    this.modalBarrierColor,
    this.showDragHandle,
    this.scrollControlDisabledMaxHeightRatio = 9.0 / 16.0,
    this.requestFocus,
    this.anchorPoint,
    this.sheetAnimationStyle,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
    builder: builder,
    capturedThemes: capturedThemes,
    barrierLabel: barrierLabel,
    barrierOnTapHint: barrierOnTapHint,
    backgroundColor: backgroundColor,
    elevation: elevation,
    shape: shape,
    clipBehavior: clipBehavior,
    constraints: constraints,
    modalBarrierColor: modalBarrierColor,
    isDismissible: barrierDismissible,
    enableDrag: enableDrag,
    showDragHandle: showDragHandle,
    isScrollControlled: isScrollControlled,
    scrollControlDisabledMaxHeightRatio: scrollControlDisabledMaxHeightRatio,
    settings: this,
    requestFocus: requestFocus,
    anchorPoint: anchorPoint,
    useSafeArea: useSafeArea,
    sheetAnimationStyle: sheetAnimationStyle,
  );
}
