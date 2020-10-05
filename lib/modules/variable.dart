import 'package:material_x/material_x.dart';

extension Ok on Widget {
  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.child}
  Widget mxMaterial({
    /// The kind of material to show (e.g., card or canvas). This
    /// affects the shape of the widget, the roundness of its corners if
    /// the shape is rectangular, and the default color.
    final MaterialType type,

    /// {@template flutter.material.material.elevation}
    /// The z-coordinate at which to place this material relative to its parent.
    ///
    /// This controls the size of the shadow below the material and the opacity
    /// of the elevation overlay color if it is applied.
    ///
    /// If this is non-zero, the contents of the material are clipped, because the
    /// widget conceptually defines an independent printed piece of material.
    ///
    /// Defaults to 0. Changing this value will cause the shadow and the elevation
    /// overlay to animate over [animationDuration].
    ///
    /// The value is non-negative.
    ///
    /// See also:
    ///
    ///  * [ThemeData.applyElevationOverlayColor] which controls the whether
    ///    an overlay color will be applied to indicate elevation.
    ///  * [color] which may have an elevation overlay applied.
    ///
    /// {@endtemplate}
    final double elevation,

    /// The color to paint the material.
    ///
    /// Must be opaque. To create a transparent piece of material, use
    /// [MaterialType.transparency].
    ///
    /// To support dark themes, if the surrounding
    /// [ThemeData.applyElevationOverlayColor] is true and [ThemeData.brightness]
    /// is [Brightness.dark] then a semi-transparent overlay color will be
    /// composited on top of this color to indicate the elevation.
    ///
    /// By default, the color is derived from the [type] of material.
    final Color color,

    /// The color to paint the shadow below the material.
    ///
    /// Defaults to fully opaque black.
    final Color shadowColor,

    /// The typographical style to use for text within this material.
    final TextStyle textStyle,

    /// Defines the material's shape as well its shadow.
    ///
    /// If shape is non null, the [borderRadius] is ignored and the material's
    /// clip boundary and shadow are defined by the shape.
    ///
    /// A shadow is only displayed if the [elevation] is greater than
    /// zero.
    final ShapeBorder shape,

    /// Whether to paint the [shape] border in front of the [child].
    ///
    /// The default value is true.
    /// If false, the border will be painted behind the [child].
    final bool borderOnForeground,

    /// {@template flutter.widgets.Clip}
    /// The content will be clipped (or not) according to this option.
    ///
    /// See the enum [Clip] for details of all possible options and their common
    /// use cases.
    /// {@endtemplate}
    ///
    /// Defaults to [Clip.none], and must not be null.
    final Clip clipBehavior,

    /// Defines the duration of animated changes for [shape], [elevation],
    /// [shadowColor] and the elevation overlay if it is applied.
    ///
    /// The default value is [kThemeChangeDuration].
    final Duration animationDuration,

    /// If non-null, the corners of this box are rounded by this
    /// [BorderRadiusGeometry] value.
    ///
    /// Otherwise, the corners specified for the current [type] of material are
    /// used.
    ///
    /// If [shape] is non null then the border radius is ignored.
    ///
    /// Must be null if [type] is [MaterialType.circle].
    final BorderRadiusGeometry borderRadius,
    Key key,
  }) {
    return Material(
      type: type ?? MaterialType.canvas,
      animationDuration: animationDuration ?? kThemeChangeDuration,
      borderOnForeground: borderOnForeground ?? true,
      borderRadius: borderRadius,
      child: this,
      clipBehavior: clipBehavior ?? Clip.none,
      color: color,
      elevation: elevation ?? 0.0,
      key: key,
      shadowColor: shadowColor ?? const Color(0xFF000000),
      shape: shape,
      textStyle: textStyle,
    );
  }
}
