import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(Icons.camera_alt, color: Colors.grey),
          title: Text('Camera'),
          subtitle: Text('Capture photos or videos'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.document_scanner, color: Colors.grey),
          title: Text('Documents'),
          subtitle: Text('Share your files'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.photo, color: Colors.grey),
          title: Text('Media'),
          subtitle: Text('Share photos and videos'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.location_on, color: Colors.grey),
          title: Text('Location'),
          subtitle: Text('Share your location'),
          onTap: () {},
        ),
      ],
    );
  }
}
