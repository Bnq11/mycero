import 'dart:async';
import 'package:flutter_application_1/localAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Service for handling user auto logout based on user activity
class AutoLogoutService {
  static Timer? _timer;
  static const autoLogoutTimer = 15;
  // Instance of authentication service, prefer singleton
  final LocalAuth _authService = LocalAuth();

  /// Resets the existing timer and starts a new timer
  void startNewTimer() {
    stopTimer();
    if (_authService.isUserLoggedIn()) {
      _timer = Timer.periodic(const Duration(minutes: autoLogoutTimer), (_) {
        timedOut();
      });
    }
  }

  /// Stops the existing timer if it exists
  void stopTimer() {
    if (_timer != null || (_timer?.isActive != null && _timer!.isActive)) {
      _timer?.cancel();
    }
  }

  /// Track user activity and reset timer
  void trackUserActivity([_]) async {
    print('User Activity Detected!');
    if (_authService.isUserLoggedIn() && _timer != null) {
      startNewTimer();
    }
  }

  /// Called if the user is inactive for a period of time and opens a dialog
  Future<void> timedOut() async {
    stopTimer();
    if (_authService.isUserLoggedIn()) {
      // Logout the user and pass the reason to the Auth Service
      _authService.logoutUser(reason: 'auto-logout');
    }
  }
}

class UserActivityDetector extends StatefulWidget {
  const UserActivityDetector({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<UserActivityDetector> createState() => _UserActivityDetectorState();
}

class _UserActivityDetectorState extends State<UserActivityDetector> {
  // Prefer singleton for the auto logout service
  final AutoLogoutService _autoLogoutService = AutoLogoutService();
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    _autoLogoutService.startNewTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(focusNode);
    return KeyboardListener(
      focusNode: focusNode,
      onKeyEvent: (KeyEvent event) {
        if (event is KeyDownEvent) {
          _autoLogoutService.trackUserActivity();
        }
      },
      child: GestureDetector(
        // Important for detecting the clicks properly for clickable and non-clickable places.
        behavior: HitTestBehavior.deferToChild,
        onTapDown: _autoLogoutService.trackUserActivity,
        child: widget.child,
      ),
    );
  }
}
