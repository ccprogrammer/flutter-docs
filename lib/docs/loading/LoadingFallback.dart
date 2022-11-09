import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';

class LoadingFallback extends StatelessWidget {
  const LoadingFallback(
      {required this.isLoading,
      required this.child,
      required this.loadingLabel,
      Key? key,
      required this.context})
      : super(key: key);

  final bool isLoading;
  final Widget child;
  final String loadingLabel;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    buildIndicator() {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 26,
              height: 26,
              child: CircularProgressIndicator(
                color: Colors.cyan,
              ),
            ),
            const SizedBox(width: 10),
            DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              child: Text(
                loadingLabel,
              ),
            ),
          ],
        ),
      );
    }

    return LoadingOverlay(
      isLoading: isLoading,
      color: Colors.black87,
      progressIndicator: buildIndicator(),
      child: child,
    );
  }
}
