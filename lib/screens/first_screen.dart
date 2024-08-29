import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_basics/provider/provider.dart';
import 'package:state_basics/screens/second_screen.dart';

class FirstScreen extends ConsumerWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ref.read(nameProvider.notifier).update((value) {
            if (value == "Rohit") {
              value = "Amish";
            } else {
              value = "Rohit";
            }
            return value;
          });
          // setState(() {
          //   if (name == "Rohit") {
          //     name = "Amish";
          //   } else {
          //     name = "Rohit";
          //   }
          // });

          // print("Button Pressed");
        },
        label: const Text('Update Name'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(name),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
              child: const Icon(Icons.arrow_right_alt))
        ],
      ),
    );
  }
}
