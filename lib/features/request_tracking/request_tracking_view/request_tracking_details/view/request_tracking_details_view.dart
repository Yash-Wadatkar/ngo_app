import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../../../../core/common_widgets/common_app_bar.dart';
import '../../../../../core/common_widgets/details_cards.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/image_string.dart';

@RoutePage()
class RequestTrackingDetailsView extends StatelessWidget {
  RequestTrackingDetailsView({super.key});

  final List<DetailsCards> detailsCardsList = [
    DetailsCards(
      title: "Request ID",
      subTitle: "1234213421",
      image: ImageString.requestID,
    ),
    DetailsCards(
      title: "Sahayka Name",
      subTitle: "Raj more",
      image: ImageString.sahaykaName,
    ),
    DetailsCards(
      title: "Request Name",
      subTitle: "Mahesh Koli",
      image: ImageString.requestName,
    ),
    DetailsCards(
      title: "Age",
      subTitle: "14",
      image: ImageString.age,
    ),
    DetailsCards(
      title: "Gender",
      subTitle: "Male",
      image: ImageString.gender,
    ),
    DetailsCards(
      title: "Sahayka Phone No.",
      subTitle: "8765433245",
      image: ImageString.sahaykaPhoneNo,
    ),
    DetailsCards(
      title: "Sahayka Email ID",
      subTitle: "Mahesh@123432gmail.com",
      image: ImageString.sahaykaEmailId,
    ),
    DetailsCards(
      title: "Category",
      subTitle: "Education",
      image: ImageString.category,
    ),
    DetailsCards(
      title: "Address",
      subTitle:
          "E/7, Chand Society, Juhu Road, Juhu  Mumbai Maharashtra India ",
      image: ImageString.address,
    ),
    DetailsCards(
      title: "Pincode",
      subTitle: "400021",
      image: ImageString.pincode,
    ),
    DetailsCards(
      title: "Country",
      subTitle: "India",
      image: ImageString.country,
    ),
    DetailsCards(
      title: "State",
      subTitle: "Maharashtra",
      image: ImageString.state,
    ),
    DetailsCards(
      title: "City",
      subTitle: "Mumbai",
      image: ImageString.city,
    ),
    DetailsCards(
      title: "Reason for Request",
      subTitle:
          "Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet. Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet.",
      image: ImageString.reasonForRequest,
    ),
    DetailsCards(
      title: "Story",
      subTitle:
          "Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet. Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet.",
      image: ImageString.story,
    ),
    DetailsCards(
      title: "What the Problem",
      subTitle:
          "Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet. Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet.",
      image: ImageString.whatTheProblem,
    ),
    DetailsCards(
      title: "Conclusion",
      subTitle:
          "Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet. Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet.",
      image: ImageString.conclusion,
    ),
    DetailsCards(
      title: "Message to Sahayak",
      subTitle:
          "Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet. Lorem ipsum dolor sit amet consectetur. Integer interdum feugiat in et nibh enim. Amet eu lectus nec cras ultrices hac. Id nibh viverra netus faucibus nunc pellentesque enim amet. Pellentesque mi ornare dapibus sit ante vitae amet.",
      image: ImageString.messageToSahayak,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CommonAppBar(appBarTitle: "Request Tracking"),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return AppSizes.height8;
        },
        itemCount: detailsCardsList.length,
        itemBuilder: (context, index) {
          final detailsList = detailsCardsList[index];
          return DetailsCards(
            image: detailsList.image,
            title: detailsList.title,
            subTitle: detailsList.subTitle,
          );
        },
      ),
    );
  }
}
