import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOSHomePage extends StatelessWidget {
  const IOSHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("iOS Shop"),
        ),
        child: Center(
          child: CupertinoButton(
            color: CupertinoColors.activeBlue,
            child: const Text("Buy Now"),
            onPressed: () {
              showCupertinoDialog(
                context: context,

                builder: (_) {
                  return CupertinoAlertDialog(
                    title: const Text("Success"),
                    content: const Text("Order placed"),
                    actions: [
                      CupertinoDialogAction(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}