import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/providers.dart';
import 'package:share_plus/share_plus.dart';

enum SettingsMenuItem { saveTemplates, loadTemplates }

class SettingsPopupWidget extends StatefulHookConsumerWidget {
  const SettingsPopupWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingsPopupWidget> createState() =>
      _SettingsPopupWidgetState();
}

class _SettingsPopupWidgetState extends ConsumerState<SettingsPopupWidget> {
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
            FilePickerResult? result = await FilePicker.platform.pickFiles();
            if (result != null) {
              File file = File(result.files.single.path!);
              ref
                  .read(sessionTemplateListNotifierProvider.notifier)
                  .loadFromFile(file.path);
            } else {
              // User canceled the picker
            }
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
        ];
      },
    );
  }
}
