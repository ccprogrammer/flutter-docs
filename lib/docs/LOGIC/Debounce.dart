import 'dart:async';

Timer? _debounce;

  Debounce(Function onChange) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 800), () {
      onChange();
    });
  }
