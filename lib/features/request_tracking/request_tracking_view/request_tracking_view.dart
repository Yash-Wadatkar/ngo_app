import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/common_request_image_card.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';

import '../../../core/common_widgets/common_app_bar.dart';
import '../../../core/common_widgets/common_filter_card.dart';
import '../../../core/common_widgets/common_toggle.dart';
import '../../../core/common_widgets/custom_input_field_widget.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_sizes.dart';
import '../../../core/constants/app_strings.dart';

@RoutePage()
class RequestTrackingView extends StatefulWidget {
  const RequestTrackingView({super.key});

  @override
  State<RequestTrackingView> createState() => _RequestTrackingViewState();
}

class _RequestTrackingViewState extends State<RequestTrackingView> {
  final List<String> filters = ['All', 'In-Progress', 'Completed', 'Rejected'];
  int selectedIndex = 0; // Track selected filter
  int selectedToggleIndex = 0; // Track selected toggle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CommonAppBar(appBarTitle: "Request Tracking"),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          _buildSearchBar(),
          _buildHorizontalFilterCards(),
          _toggleSwitch(),
          _imageCards(),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return CommonInputFieldWidget(
      hintText: AppStrings.search,
      name: AppStrings.search,
    );
  }

  Widget _buildHorizontalFilterCards() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: CommonFilterCard(
              title: filters[index],
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          );
        },
      ),
    );
  }

  Widget _toggleSwitch() {
    return CommonToggleSwitch(
      width: AppSizes.wSize150,
      label: ["Current Request", "Request History"],
      toggleFunction: (index) {
        setState(() {
          selectedToggleIndex = index ?? 0;
        });
      },
      totalSwitches: 2,
      initialLabelIndex: selectedToggleIndex,
    );
  }

  Widget _imageCards() {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: CommonRequestImageCard(
              onTap: () => {
                context.navigateTo(
                  RequestTrackingDetailsView(),
                ),
              },
            ),
          );
        },
      ),
    );
  }
}
