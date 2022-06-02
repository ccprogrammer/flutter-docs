import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
//   loading_overlay: ^0.3.0

class LoadingFallback extends StatelessWidget {
  LoadingFallback(
      {required this.isLoading,
      required this.child,
      required this.loadingLabel,
      Key? key})
      : super(key: key);

  final bool isLoading;
  final Widget child;
  final String loadingLabel;

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: isLoading,
      color: Colors.black87,
      progressIndicator: LoadingOverlayWidget(label: loadingLabel),
      child: child,
    );
  }
}

class LoadingOverlayWidget extends StatelessWidget {
  LoadingOverlayWidget({required this.label, Key? key}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.transparent,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.red),
          ),
          SizedBox(width: 10),
          Text(
            label != null && label != '' ? label : 'Loading ...',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black),
          )
        ],
      ),
    );
  }
}
