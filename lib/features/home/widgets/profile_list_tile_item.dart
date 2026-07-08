import 'package:flutter/material.dart';
import 'package:iti_project/features/home/models/profile_model.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class ProfileListTileItem extends StatelessWidget {
  const ProfileListTileItem({super.key, required this.profileModel});
final ProfileModel profileModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(profileModel.leading,color: AppColors.brownText,),
      title:  Text(profileModel.text,style: AppTextStyles.k18Text,),
      trailing: profileModel.showTrail
          ? profileModel.trails ?? const Icon(Icons.arrow_forward_ios, )
          : null,
      onTap: () {},
    );
  }
}
