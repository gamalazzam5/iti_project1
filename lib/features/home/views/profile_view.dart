import 'package:flutter/material.dart';
import 'package:iti_project/features/home/models/profile_model.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';
import '../widgets/profile_list_tile_item.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool switchValue = false;

  final List<ProfileModel> accountItems = [
    ProfileModel(
      leading: Icons.person,
      text: 'Edit Profile',
      showTrail: true,
      trails: const Icon(Icons.arrow_forward_ios),
    ),
    ProfileModel(
      leading: Icons.key,
      text: 'Change Password',
      showTrail: true,
      trails: const Icon(Icons.arrow_forward_ios),
    ),
    ProfileModel(
      leading: Icons.credit_card,
      text: 'My Cards',
      showTrail: true,
      trails: const Icon(Icons.arrow_forward_ios),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<ProfileModel> appSettingsItems = [
      ProfileModel(
        leading: Icons.notifications,
        text: 'Notifications',
        showTrail: true,
        trails: Switch(
          activeTrackColor: AppColors.primaryColor,
          value: switchValue,
          onChanged: (value) {
            setState(() {
              switchValue = value;
            });
          },
        ),

      ),
    ProfileModel(
    leading: Icons.g_translate,
    text: 'Language',
    showTrail: true,
    trails: Row(
      mainAxisSize: MainAxisSize.min,

      children: [
      Text('English',style: AppTextStyles.k18Text.copyWith(fontWeight: .w400)),
      Icon(Icons.arrow_forward_ios_outlined,)
    ],
    )
    ),
      ProfileModel(
        leading: Icons.logout,
        text: 'Logout',
        showTrail: true,
        trails: null,
      ),    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: AppTextStyles.k24TextButton,
        ),
      ),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          ...List.generate(
            accountItems.length,
                (index) => ProfileListTileItem(
              profileModel: accountItems[index],
            ),
          ),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'App Settings',
              style: AppTextStyles.k24TextButton.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 32),

          ...List.generate(
            appSettingsItems.length,
                (index) => ProfileListTileItem(
              profileModel: appSettingsItems[index],
            ),
          ),
        ],
      ),
    );
  }
}