import 'dart:async';

Timer? _debounce;

Debounce() {
  if (_debounce?.isActive ?? false) _debounce!.cancel();
  _debounce = Timer(const Duration(milliseconds: 800), () {
    print('Do Something Here');
  });
}
