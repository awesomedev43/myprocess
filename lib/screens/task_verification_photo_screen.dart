import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';

class TaskVerificationPhotoScreen extends ConsumerStatefulWidget {
  const TaskVerificationPhotoScreen(
      {super.key, required this.camera, required this.dispose});

  final CameraDescription? camera;
  final bool dispose;

  @override
  ConsumerState<TaskVerificationPhotoScreen> createState() =>
      _TaskVerificationPhotoScreenState();
}

class _TaskVerificationPhotoScreenState
    extends ConsumerState<TaskVerificationPhotoScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      widget.camera!,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() async {
    if (widget.dispose) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.dispose) {
      return FutureBuilder(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            Future.microtask(() => Navigator.pop(context));
            return Container();
          });
    }

    final task = ModalRoute.of(context)!.settings.arguments as Task;
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify ${task.title}'),
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeControllerFuture;

            final image = await _controller.takePicture();

            if (!mounted) return;

            Navigator.pop(context, image.path);
          } catch (e) {
            log("Exception: ${e.toString()}");
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
