import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  final Widget child;
  final Duration delay;

  const LoadingPage(
      {super.key,
      required this.child,
      this.delay = const Duration(seconds: 2)});

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.delay).then((_) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Center(
          child: CircularProgressIndicator(
        color: Colors.orange.shade900,
      ));
    } else {
      return widget.child;
    }
  }
}
