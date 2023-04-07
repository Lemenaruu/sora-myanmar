// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class ColorLabel {
  Color? color;
  String? label;
  ColorLabel({
    this.color,
    this.label,
  });
}

class FilterHomePage extends ConsumerStatefulWidget {
  const FilterHomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterHomePageState();
}

class _FilterHomePageState extends ConsumerState<FilterHomePage> {
  List<Widget> chips = [];
  var formatter = NumberFormat.decimalPattern();
  bool isExpandedBrand = false;
  bool isExpandedServices = false;
  bool isExpandedPrice = false;
  bool isExpandedColor = false;
  double startval = 50000, endval = 200000;

  int? defaultBrandChoiceIndex;
  int? defaultServicesChoiceIndex;
  int? defaultColorChoiceIndex;
  final List<String> _servicesChoicesList = ['Free Shipping'];
  final List<String> _brandChoicesList = [
    'Samsung',
    'OnePlus',
    'Oppo',
    'Oppo',
    'Apple',
    'Asus',
    'AT&T',
    'BlackBerry'
  ];
  final List<ColorLabel> _colorChoicesList = [
    ColorLabel(
      color: Colors.grey,
      label: 'Grey',
    ),
    ColorLabel(
      color: Colors.orange,
      label: 'Orange',
    ),
    ColorLabel(
      color: Colors.blue,
      label: 'Blue',
    ),
    ColorLabel(
      color: AppColor.red,
      label: 'Red',
    ),
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
            const Divider(
              color: Colors.grey,
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        isExpandedServices = !isExpandedServices;
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
                              "Services",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                        body: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            children: List.generate(_servicesChoicesList.length,
                                (index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ChoiceChip(
                                  visualDensity: VisualDensity.compact,
                                  pressElevation: 1.2,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: defaultServicesChoiceIndex == index
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
                                      _servicesChoicesList[index],
                                      style: txtMedium.copyWith(
                                        color:
                                            defaultServicesChoiceIndex == index
                                                ? AppColor.red
                                                : Colors.black,
                                      ),
                                    ),
                                  ),
                                  selected: defaultServicesChoiceIndex == index,
                                  selectedColor: Colors.pink.shade50,
                                  onSelected: (value) {
                                    setState(() {
                                      defaultServicesChoiceIndex = value
                                          ? index
                                          : defaultServicesChoiceIndex;
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
                        isExpanded: isExpandedServices,
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
                  ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        isExpandedBrand = !isExpandedBrand;
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
                              "Brand",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                        body: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            children: List.generate(_brandChoicesList.length,
                                (index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ChoiceChip(
                                  visualDensity: VisualDensity.compact,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: defaultBrandChoiceIndex == index
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
                                      _brandChoicesList[index],
                                      style: txtMedium.copyWith(
                                        color: defaultBrandChoiceIndex == index
                                            ? AppColor.red
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                  selected: defaultBrandChoiceIndex == index,
                                  selectedColor: Colors.pink.shade50,
                                  onSelected: (value) {
                                    setState(() {
                                      defaultBrandChoiceIndex = value
                                          ? index
                                          : defaultBrandChoiceIndex;
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
                        isExpanded: isExpandedBrand,
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
                  ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        isExpandedPrice = !isExpandedPrice;
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
                              "Price",
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
                              // divisions: 20,
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
                        isExpanded: isExpandedPrice,
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
                  ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        isExpandedColor = !isExpandedColor;
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
                        isExpanded: isExpandedColor,
                        body: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            children: List.generate(_colorChoicesList.length,
                                (index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ChoiceChip(
                                  avatar: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: _colorChoicesList[index].color,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  visualDensity: VisualDensity.compact,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: defaultColorChoiceIndex == index
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
                                      _colorChoicesList[index].label!,
                                      style: txtMedium.copyWith(
                                        color: defaultColorChoiceIndex == index
                                            ? AppColor.red
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                  selected: defaultColorChoiceIndex == index,
                                  selectedColor: Colors.pink.shade50,
                                  onSelected: (value) {
                                    setState(() {
                                      defaultColorChoiceIndex = value
                                          ? index
                                          : defaultColorChoiceIndex;
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
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                        textAlign: TextAlign.center,
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
                        'Show 4 Results',
                        textAlign: TextAlign.center,
                        style: txtMedium.copyWith(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
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
    );
  }
}
