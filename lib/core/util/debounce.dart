import 'dart:async';

/// Custom debouncer
class Debouncer {
  /// Custom debouncer
  Debouncer({
    required this.duration,
  });

  /// Time for debounce operation
  final Duration duration;

  Timer? _timer;

  /// Start action
  void run(void Function() action) {
    _timer?.cancel();
    _timer = Timer(duration, action);
  }
}
