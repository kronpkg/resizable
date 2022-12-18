import 'package:flutter/material.dart';

import 'model/resizable_element_model.dart';

class ResizableHeadMenu extends StatelessWidget {
  const ResizableHeadMenu({
    Key? key,
    required this.elements,
  }) : super(key: key);

  final List<ResizableElementModel> elements;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: const Icon(Icons.settings, color: Colors.blue),
      itemBuilder: (BuildContext context) {
        return elements
            .map<PopupMenuItem>(
              (e) => PopupMenuItem(
                padding: const EdgeInsets.all(0),
                child: StatefulBuilder(
                  builder: (context, setState) {
                    return CheckboxListTile(
                      title: Text(e.type.valueName),
                      value: e.isShow,
                      onChanged: (val) => setState(() => e.isShow = val!),
                    );
                  },
                ),
              ),
            )
            .toList();
      },
    );
  }
}
