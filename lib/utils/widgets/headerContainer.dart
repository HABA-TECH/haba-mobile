import 'package:flutter/material.dart';
import 'package:haba/routes/appRouter.dart';
import 'package:haba/utils/colors.dart';
import 'package:haba/utils/widgets/doublesidedContainer.dart';

import '../TextStyles.dart';

class HeaderContainer extends StatefulWidget {
  final double? height;
  final String? name;

  const HeaderContainer({super.key, required this.height, required this.name});

  @override
  State<HeaderContainer> createState() => _HeaderContainerState();
}

class _HeaderContainerState extends State<HeaderContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.greyPAGEBLUE,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.zero,
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 17, right: 10),
            child:
                // TEXT
                Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Hello ${widget.name}",
                      style: TextStyles.h1(22, Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "You have no current loan",
                      style: TextStyles.light(
                        15,
                        Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Container
        DoubleContainer(
          child1: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      // height: 60,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Balance",
                              style: TextStyles.h1(13, Colors.grey),
                            ),
                          ),
                          Text(
                            "KSH 0.00",
                            style: TextStyles.h1(15, Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      // height: 60,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Text(
                            "Limit",
                            style: TextStyles.h1(12, Colors.grey),
                          ),
                          Text(
                            "KSH 55, 000 ",
                            style: TextStyles.h1(15, Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          child2: Column(
            children: [
              Text(
                'Choose from our loan packages, start with the lower then pragmatically grow',
                style: TextStyles.normal(11, Colors.grey[700]),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRouter.personalInfoHome);
                },
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Apply now',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.indigo,
                          fontSize: 14)),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class AdminHeaderContainer extends StatefulWidget {
  final double? height;
  final String? name;

  const AdminHeaderContainer(
      {super.key, required this.height, required this.name});

  @override
  State<AdminHeaderContainer> createState() => _AdminHeaderContainerState();
}

class _AdminHeaderContainerState extends State<AdminHeaderContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.greyPAGEBLUE,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.zero,
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 17, right: 10),
            child:
                // TEXT
                Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Financial Management',
                      style: TextStyles.h1(22, Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Ideas and steps towards financial freedom",
                      style: TextStyles.light(
                        15,
                        Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
