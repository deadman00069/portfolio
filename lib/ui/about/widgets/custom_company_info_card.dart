import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/colors.dart';


class CustomCompanyInfoCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;
  final String employmentType;
  final String startEndDate;

  const CustomCompanyInfoCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.location,
    required this.employmentType,
    required this.startEndDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 207, right: 689),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w300,
                  color: AppColors.color666666,
                ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'svg/office_building.svg',
                    width: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  SizedBox(
                    width: 269,
                    child: Text(
                      subTitle,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  const Icon(
                    Icons.location_on_outlined,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    location,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.colorD7FFE0,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: Text(
                        employmentType,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: AppColors.color018C0F,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        startEndDate,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Divider(
            height: 0,
            color: AppColors.colorEBEAED,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
