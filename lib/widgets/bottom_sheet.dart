import 'package:flutter/material.dart';

PersistentBottomSheetController<dynamic> customBottomSheet(
    BuildContext context) {
  return showBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height, // full screen height
        child: DraggableScrollableSheet(
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              child: ListView(
                controller: scrollController,
                children: const [
                  // add your widgets here
                  ListTile(title: Text('Item 1')),
                  ListTile(title: Text('Item 2')),
                  ListTile(title: Text('Item 3')),
                ],
              ),
            );
          },
        ),
      );
    },
    backgroundColor: Colors.transparent, // transparent background
  );
}
