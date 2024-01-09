import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/model/providers.dart';

class TaskVerificationPhotoScreenArgs {
  TaskVerificationPhotoScreenArgs(
      {required this.sessionInstanceId, required this.taskInstances});

  final String sessionInstanceId;
  final List<TaskInstance> taskInstances;
}

class TaskVerificationPhotoScreen extends ConsumerStatefulWidget {
  const TaskVerificationPhotoScreen({super.key, required this.camera});

  final CameraDescription? camera;

  @override
  ConsumerState<TaskVerificationPhotoScreen> createState() =>
      _TaskVerificationPhotoScreenState();
}

class _TaskVerificationPhotoScreenState
    extends ConsumerState<TaskVerificationPhotoScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late int _currentIndex;
  late bool _inProgress;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      widget.camera!,
      ResolutionPreset.veryHigh,
    );

    _initializeControllerFuture = _controller.initialize();
    _currentIndex = 0;
    _inProgress = false;
  }

  @override
  void dispose() async {
    _controller.dispose();
    super.dispose();
  }

  void onTakeVerificationPhoto(TaskVerificationPhotoScreenArgs args) async {
    try {
      final snackBarController = ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Saving Verification Photo ...")));

      await _initializeControllerFuture;

      setState(() {
        _inProgress = true;
      });

      final taskInstance = args.taskInstances.elementAt(_currentIndex);
      await _controller.setFlashMode(FlashMode.off);
      final image = await _controller.takePicture();

      if (!mounted) {
        return;
      }

      await ref
          .read(sessionInstanceListNotifierProvider.notifier)
          .updateTaskWithPhotoVerification(
              args.sessionInstanceId, taskInstance.id, image.path);

      if (mounted && _currentIndex + 1 >= args.taskInstances.length) {
        snackBarController.close();
        Navigator.pop(context);
        return;
      }

      setState(() {
        _currentIndex++;
        _inProgress = false;
      });
    } catch (e) {
      log("Exception: ${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as TaskVerificationPhotoScreenArgs;

    final taskInstance = args.taskInstances.elementAt(_currentIndex);

    return Scaffold(
      appBar: AppBar(
        title: Text('Verify ${taskInstance.title}'),
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
      floatingActionButton: Visibility(
        visible: !_inProgress,
        child: FloatingActionButton.extended(
          label: const Text("Take Verification Photo"),
          onPressed: () => onTakeVerificationPhoto(args),
          icon: const Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
