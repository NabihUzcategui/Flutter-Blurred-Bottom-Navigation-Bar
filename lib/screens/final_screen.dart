import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../widgets/container_menu.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Blurred Bottom Navigation Bar"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // GridView
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                color: theme.primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text("Nabih U.",
                        style: theme.textTheme.titleLarge!
                            .copyWith(color: Colors.white)),
                    Text(
                      "ProjectoDev",
                      style: theme.textTheme.titleSmall!
                          .copyWith(color: Colors.grey.shade400),
                    )
                  ],
                ),
              );
            },
          ),

          ContainerMenu(theme: theme),

          Positioned(
            left: 22,
            right: 22,
            bottom: 18,
            height: 86,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _builtMenuItem(Icons.home, 0),
                _builtMenuItem(Icons.apps, 1),
                _builtMenuItem(Icons.notification_add, 2),
                _builtMenuItem(Icons.settings, 3),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _builtMenuItem(IconData icon, index) {
    return ZoomTapAnimation(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Icon(
        icon,
        size: 40,
        color: selectedItem == index ? Colors.yellowAccent : Colors.white54,
      ),
    );
  }
}
