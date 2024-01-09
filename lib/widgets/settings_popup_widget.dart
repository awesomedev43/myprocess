import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/providers.dart';
import 'package:share_plus/share_plus.dart';

enum SettingsMenuItem {
  saveTemplates,
  loadTemplates,
  saveSessionRecords,
  loadSessionRecords
}

class SettingsPopupWidget extends StatefulHookConsumerWidget {
  const SettingsPopupWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingsPopupWidget> createState() =>
      _SettingsPopupWidgetState();
}

class _SettingsPopupWidgetState extends ConsumerState<SettingsPopupWidget> {
  Future<void> onLoadTemplates() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path!);
      final loaded = await ref
          .read(sessionTemplateListNotifierProvider.notifier)
          .loadFromFile(file.path);
      if (!mounted) {
        return;
      }
      if (!loaded) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Filed to load ${file.path}")));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Loaded File ${file.path}")));
      }
    }
  }

  Future<void> onLoadSessionRecords() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path!);
      final loaded = await ref
          .read(sessionInstanceListNotifierProvider.notifier)
          .loadFromFile(file.path);

      if (!mounted) {
        return;
      }
      if (!loaded) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Filed to load ${file.path}")));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Loaded File ${file.path}")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      onSelected: (SettingsMenuItem item) async {
        switch (item) {
          case SettingsMenuItem.saveTemplates:
            final sessionListFile = await PersistantLocalStorage.getLocalFile(
                FileStorageObjectType.sessionlist);
            Share.shareXFiles([XFile(sessionListFile.path)]);
            break;
          case SettingsMenuItem.loadTemplates:
            await onLoadTemplates();
            break;
          case SettingsMenuItem.saveSessionRecords:
            final sessionListFile = await PersistantLocalStorage.getLocalFile(
                FileStorageObjectType.sessioninstancelist);
            Share.shareXFiles([XFile(sessionListFile.path)]);
            break;
          case SettingsMenuItem.loadSessionRecords:
            await onLoadSessionRecords();
            break;
          default:
        }
      },
      itemBuilder: (context) {
        return <PopupMenuEntry<SettingsMenuItem>>[
          const PopupMenuItem<SettingsMenuItem>(
            value: SettingsMenuItem.saveTemplates,
            child: Text('Save Templates'),
          ),
          const PopupMenuItem<SettingsMenuItem>(
            value: SettingsMenuItem.loadTemplates,
            child: Text('Load Templates'),
          ),
          const PopupMenuItem<SettingsMenuItem>(
            value: SettingsMenuItem.saveSessionRecords,
            child: Text('Save Session Records'),
          ),
          const PopupMenuItem<SettingsMenuItem>(
            value: SettingsMenuItem.loadSessionRecords,
            child: Text('Load Session Records'),
          ),
        ];
      },
    );
  }
}
