import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../../core/common_widgets/common_profile_photo.dart';
import '../../../core/common_widgets/common_title_subtitle_text.dart';
import '../../../core/constants/app_colors.dart';

class ChatAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String profileName;
  final String profileLastSeen;
  final bool? isOnline;
  final void Function()? onTap;

  const ChatAppbar({
    super.key,
    required this.profileName,
    required this.profileLastSeen,
    required this.onTap,
    this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.textFieldBorderColor),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Icon(
                Icons.keyboard_arrow_left_rounded,
                color: AppColors.greyColor,
              ),
            ),
          ),
          AppSizes.width10,
          CommonProfilePhoto(
            isOnline: isOnline ?? false,
          ),
          AppSizes.width15,
          InkWell(
            onTap: onTap,
            child: TitleSubtitleInColumn(
              title: profileName,
              unread: false,
              subTitle: profileLastSeen,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
