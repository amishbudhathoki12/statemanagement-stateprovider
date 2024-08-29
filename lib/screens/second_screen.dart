import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_basics/provider/provider.dart';

class SecondScreen extends ConsumerWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("This is second page"),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
