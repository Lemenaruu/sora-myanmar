import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../constants/widgets_constants.dart';

class FilterBlogHouseRentPage extends ConsumerStatefulWidget {
  const FilterBlogHouseRentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterBlogHouseRentPageState();
}

class _FilterBlogHouseRentPageState
    extends ConsumerState<FilterBlogHouseRentPage> {
  List<Widget> chips = [];
  var formatter = NumberFormat.decimalPattern();
  bool isExpandedTrainline = false;
  bool isExpandedTrainstation = false;
  bool isExpandedRentalprice = false;
  bool isExpandedRoomtype = false;

  double startval = 300000, endval = 400000;

  int? defaultTrainLineChoiceIndex;
  int? defaultTrainStationChoiceIndex;
  int? defaultRentalPriceChoiceIndex;
  int? defaultRoomTypeChoiceIndex;

  final List<String> _trainLineChoicesList = [
    'Yamanote Line',
    'Keihin-Tohoku Line',
  ];
  final List<String> _trainStationChoicesList = [
    'Takadanobaba',
    'Shin-Okubo',
    'Shibuya',
    'Komagome',
    'Shinagawa',
  ];
  final List<String> _roomTypeChoicesList = [
    '1 Room',
    '1K',
    '1DK',
    'Sharehouse',
    '2K/ 2DK',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Close',
              style: txtMedium.copyWith(
                color: AppColor.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        isExpandedTrainline = !isExpandedTrainline;
                      });
                    },
                    elevation: 0,
                    expandedHeaderPadding: EdgeInsets.zero,
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Train Line",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                        body: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            children: List.generate(
                                _trainLineChoicesList.length, (index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ChoiceChip(
                                  visualDensity: VisualDensity.compact,
                                  pressElevation: 1.2,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color:
                                          defaultTrainLineChoiceIndex == index
                                              ? AppColor.red
                                              : Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  labelPadding: const EdgeInsets.all(2.0),
                                  label: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text(
                                      _trainLineChoicesList[index],
                                      style: txtMedium.copyWith(
                                        color:
                                            defaultTrainLineChoiceIndex == index
                                                ? AppColor.red
                                                : Colors.black,
                                      ),
                                    ),
                                  ),
                                  selected:
                                      defaultTrainLineChoiceIndex == index,
                                  selectedColor: Colors.pink.shade50,
                                  onSelected: (value) {
                                    setState(() {
                                      defaultTrainLineChoiceIndex = value
                                          ? index
                                          : defaultTrainLineChoiceIndex;
                                    });
                                  },
                                  // backgroundColor: color,
                                  elevation: 1,
                                  padding: const EdgeInsets.symmetric(),
                                ),
                              );
                            }),
                          ),
                        ),
                        isExpanded: isExpandedTrainline,
                      ),
                    ],
                  ),
                  const Divider(),
                  ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        isExpandedTrainstation = !isExpandedTrainstation;
                      });
                    },
                    expandedHeaderPadding: EdgeInsets.zero,
                    animationDuration: kThemeAnimationDuration,
                    elevation: 0,
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Train Station",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                        body: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            children: List.generate(
                                _trainStationChoicesList.length, (index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ChoiceChip(
                                  visualDensity: VisualDensity.compact,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: defaultTrainStationChoiceIndex ==
                                              index
                                          ? AppColor.red
                                          : Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  labelPadding: const EdgeInsets.all(2.0),
                                  label: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text(
                                      _trainStationChoicesList[index],
                                      style: txtMedium.copyWith(
                                        color: defaultTrainStationChoiceIndex ==
                                                index
                                            ? AppColor.red
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                  selected:
                                      defaultTrainStationChoiceIndex == index,
                                  selectedColor: Colors.pink.shade50,
                                  onSelected: (value) {
                                    setState(() {
                                      defaultTrainStationChoiceIndex = value
                                          ? index
                                          : defaultTrainStationChoiceIndex;
                                    });
                                  },
                                  // backgroundColor: color,
                                  elevation: 1,
                                  padding: const EdgeInsets.symmetric(),
                                ),
                              );
                            }),
                          ),
                        ),
                        isExpanded: isExpandedTrainstation,
                      ),
                    ],
                  ),
                  const Divider(),
                  ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        isExpandedRentalprice = !isExpandedRentalprice;
                      });
                    },
                    expandedHeaderPadding: EdgeInsets.zero,
                    // animationDuration: kThemeAnimationDuration,
                    elevation: 0,
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Rental Price",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                        body: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'MMK ${formatter.format(startval.toInt())} - ',
                                  style: txtMedium,
                                ),
                                Text(
                                  'MMK ${formatter.format(endval.toInt())}',
                                  style: txtMedium,
                                ),
                              ],
                            ),
                            RangeSlider(
                              min: 50000,
                              max: 1000000,
                              activeColor: AppColor.red,
                              divisions: 20,
                              inactiveColor: Colors.grey,
                              labels: RangeLabels(
                                  "MMK: ${formatter.format(startval.toInt())}",
                                  "MMK: ${formatter.format(endval.toInt())}"),
                              values: RangeValues(startval, endval),
                              onChanged: (RangeValues value) {
                                setState(() {
                                  startval = value.start;
                                  endval = value.end;
                                });
                              },
                            ),
                          ],
                        ),
                        isExpanded: isExpandedRentalprice,
                      ),
                    ],
                  ),
                  const Divider(),
                  ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        isExpandedRoomtype = !isExpandedRoomtype;
                      });
                    },
                    expandedHeaderPadding: EdgeInsets.zero,
                    // animationDuration: kThemeAnimationDuration,
                    elevation: 0,
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Color",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                        isExpanded: isExpandedRoomtype,
                        body: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            children: List.generate(_roomTypeChoicesList.length,
                                (index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ChoiceChip(
                                  visualDensity: VisualDensity.compact,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: defaultRoomTypeChoiceIndex == index
                                          ? AppColor.red
                                          : Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  labelPadding: const EdgeInsets.all(2.0),
                                  label: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text(
                                      _roomTypeChoicesList[index],
                                      style: txtMedium.copyWith(
                                        color:
                                            defaultRoomTypeChoiceIndex == index
                                                ? AppColor.red
                                                : Colors.black,
                                      ),
                                    ),
                                  ),
                                  selected: defaultRoomTypeChoiceIndex == index,
                                  selectedColor: Colors.pink.shade50,
                                  onSelected: (value) {
                                    setState(() {
                                      defaultRoomTypeChoiceIndex = value
                                          ? index
                                          : defaultRoomTypeChoiceIndex;
                                    });
                                  },
                                  // backgroundColor: color,
                                  elevation: 1,
                                  padding: EdgeInsets.zero,
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 35,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: OutlinedButton(
                            style: buttonStyleWithBordersideColor,
                            onPressed: () {},
                            child: Text(
                              'Clear Filters',
                              style: txtMedium.copyWith(
                                color: AppColor.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: OutlinedButton(
                            style: buttonStyleWithBordersideColor.copyWith(
                              backgroundColor: MaterialStateProperty.all(
                                AppColor.red,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Show 100 Results',
                              style: txtMedium.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
