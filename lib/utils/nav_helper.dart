import 'package:flutter/material.dart';

class NavHelper {
  /// Push a new route
  static Future<T?> push<T extends Object?>(BuildContext context, Widget page) {
    return Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => page));
  }

  /// Push a new route with a custom transition
  static Future<T?> pushWithTransition<T extends Object?>(
    BuildContext context,
    Widget page, {
    Duration duration = const Duration(milliseconds: 400),
    TransitionType transition = TransitionType.fade,
  }) {
    return Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionDuration: duration,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          switch (transition) {
            case TransitionType.fade:
              return FadeTransition(opacity: animation, child: child);
            case TransitionType.slideFromRight:
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            case TransitionType.slideFromBottom:
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            // default:
            //   return child;
          }
        },
      ),
    );
  }

  /// Push and replace the current route
  static Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    BuildContext context,
    Widget page,
  ) {
    return Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  /// Push a new route and remove all previous routes
  static Future<T?> pushAndRemoveUntil<T extends Object?>(
    BuildContext context,
    Widget page,
    bool Function(Route<dynamic>) predicate,
  ) {
    return Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      predicate,
    );
  }

  /// Push a named route
  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }

  /// Push and replace the current route with a named route
  static Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(
      context,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  /// Push a named route and remove all previous routes
  static Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    BuildContext context,
    String routeName,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) {
    return Navigator.of(
      context,
    ).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  /// Pop the current route
  static void pop<T extends Object?>(BuildContext context, [T? result]) {
    Navigator.of(context).pop(result);
  }

  /// Check if there's a route to pop
  static bool canPop(BuildContext context) {
    return Navigator.of(context).canPop();
  }
}

/// Types of transitions for navigation
enum TransitionType { fade, slideFromRight, slideFromBottom }
