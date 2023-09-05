import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Align(
        alignment: Alignment.center,
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await showMaterialModalBottomSheet(
              context: context,
              expand: true,
              barrierColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              builder: (context) {
                return const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Hero(
                      tag: 0,
                      child: SizedBox(
                        height: 200,
                        width: 300,
                        child: Card(
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: const Hero(
            tag: 0,
            child: SizedBox(
              height: 100,
              width: 200,
              child: Card(
                color: Colors.indigo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
