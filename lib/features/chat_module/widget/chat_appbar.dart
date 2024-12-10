import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../../core/common_widgets/common_profile_photo.dart';
import '../../../core/common_widgets/common_title_subtitle_text.dart';
import '../../../core/constants/app_colors.dart';

class ChatAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String profileName;
  final String profileLastSeen;
  final bool? isOnline;

  const ChatAppbar({
    super.key,
    required this.profileName,
    required this.profileLastSeen,
    this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.keyboard_arrow_left_rounded,
              color: AppColors.greyColor,
            ),
            CommonProfilePhoto(
              isOnline: isOnline ?? false,
            ),
            AppSizes.width10,
            TitleSubtitleInColumn(
              title: profileName,
              unread: false,
              subTitle: profileLastSeen,
            ),
          ],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
