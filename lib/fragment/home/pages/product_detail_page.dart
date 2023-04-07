import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sora_myanmar/constants/string_constants.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

// class ProductDetailPage extends ConsumerStatefulWidget {
//   const ProductDetailPage({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailPageState();
// }

// class _ProductDetailPageState extends ConsumerState<ProductDetailPage> {

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    super.key,
    // required this.productId
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  List<Color> Clrs = [
    Colors.black,
    Colors.blue,
    Colors.orange,
    Colors.yellow,
  ];
  int _productCount = 1;
  bool _isSelectedOne = true;
  bool _isSelectedTwo = false;
  bool _isSelectedThree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.heart,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.grey.shade100,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.36,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isSelectedOne = !_isSelectedOne;
                              _isSelectedTwo = false;
                              _isSelectedThree = false;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: _isSelectedOne
                                ? BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border:
                                        Border.all(color: Colors.blueAccent))
                                : BoxDecoration(
                                    color: Colors.grey.shade300,
                                  ),
                            child: ClipRRect(
                              child: SvgPicture.asset(
                                SvgPic.boxPackage,
                                color: Colors.black87,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isSelectedOne = false;
                              _isSelectedTwo = !_isSelectedTwo;
                              _isSelectedThree = false;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: _isSelectedTwo
                                ? BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border:
                                        Border.all(color: Colors.blueAccent))
                                : BoxDecoration(
                                    color: Colors.grey.shade300,
                                  ),
                            child: ClipRRect(
                              child: SvgPicture.asset(
                                SvgPic.folder,
                                color: Colors.black87,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isSelectedOne = false;
                              _isSelectedTwo = false;
                              _isSelectedThree = !_isSelectedThree;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: _isSelectedThree
                                ? BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border:
                                        Border.all(color: Colors.blueAccent))
                                : BoxDecoration(
                                    color: Colors.grey.shade300,
                                  ),
                            child: ClipRRect(
                              child: SvgPicture.asset(
                                SvgPic.cart,
                                color: Colors.black87,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child:
                          (_isSelectedTwo == false && _isSelectedThree == false)
                              ? ClipRRect(
                                  child: SvgPicture.asset(
                                    SvgPic.boxPackage,
                                    color: Colors.black87,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : (_isSelectedOne == false &&
                                      _isSelectedThree == false)
                                  ? ClipRRect(
                                      child: SvgPicture.asset(
                                        SvgPic.folder,
                                        color: Colors.black87,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : ClipRRect(
                                      child: SvgPicture.asset(
                                        SvgPic.cart,
                                        color: Colors.black87,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Earphone R5',
                      style: txtLarge,
                    ),
                    TextButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink.shade50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Used',
                        style: txtMedium.copyWith(
                            color: AppColor.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    for (int i = 0; i < Clrs.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Clrs[i],
                          radius: 8,
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 95,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            shape: _shapeButton,
                            elevation: 0,
                            // color: Colors.amber,
                            height: 10,
                            minWidth: 20,
                            onPressed: () {
                              setState(() {
                                _productCount != 1
                                    ? _productCount--
                                    : _productCount;
                              });
                            },
                            child: const Icon(
                              CupertinoIcons.minus,
                              size: 20,
                            ),
                          ),

                          Text(_productCount.toString()),
                          MaterialButton(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30))),
                            elevation: 0,
                            // color: Colors.amber,
                            height: 12,
                            minWidth: 20,
                            onPressed: () {
                              setState(() {
                                _productCount++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              size: 20,
                            ),
                          ),

                          //
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'MMK ',
                        style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'poppin',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' 540,000 ',
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'poppin',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ".600,000",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontFamily: 'poppin',
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                ExpansionTile(
                  iconColor: AppColor.red,
                  title: Text(
                    'Features',
                    style: txtMedium.copyWith(fontWeight: FontWeight.bold),
                  ),
                  children: const [
                    ExpansionTileChildWidget(name: 'Good quality'),
                    ExpansionTileChildWidget(name: 'Good quality'),
                    ExpansionTileChildWidget(name: 'Good quality'),
                  ],
                ),
                ExpansionTile(
                  iconColor: AppColor.red,
                  title: Text(
                    'More details',
                    style: txtMedium.copyWith(fontWeight: FontWeight.bold),
                  ),
                  children: const [
                    ExpansionTileChildWidget(
                        name: " ZEBRONICS Zeb-Thunder Bluetooth Wireless "),
                    ExpansionTileChildWidget(
                        name: " ZEBRONICS Zeb-Thunder Bluetooth Wireless "),
                    ExpansionTileChildWidget(
                        name: " ZEBRONICS Zeb-Thunder Bluetooth Wireless "),
                  ],
                ),
                ExpansionTile(
                  iconColor: AppColor.red,
                  title: Text(
                    'Gifts',
                    style: txtMedium.copyWith(fontWeight: FontWeight.bold),
                  ),
                  children: const [
                    ExpansionTileChildWidget(
                      name: 'Free bill ',
                    ),
                    ExpansionTileChildWidget(
                      name: 'Free bill ',
                    ),
                    ExpansionTileChildWidget(
                      name: 'Free bill ',
                    ),
                  ],
                ),
                OutlinedButton(
                  style: buttonStyleWithBackgroundColor,
                  onPressed: () {},
                  child: const Text(
                    'ADD TO CART',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class ExpansionTileChildWidget extends StatelessWidget {
  const ExpansionTileChildWidget({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 4,
            backgroundColor: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: txtMedium,
            ),
          )
        ],
      ),
    );
  }
}

class ProductAttribute extends StatelessWidget {
  ProductAttribute(
      {super.key,
      required this.onTap,
      required this.imageUrl,
      required this.border});
  VoidCallback onTap;
  String imageUrl;
  BoxBorder border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 70,
        decoration:
            // _isSelected
            // ?
            BoxDecoration(
          color: Colors.grey.shade300,
          border: border,
          // border: Border.all(color: Colors.blueAccent),
        ),
        // : BoxDecoration(
        //     color: Colors.grey.shade300,
        //   ),
        child: ClipRRect(
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            color: Colors.teal,
          ),
        ),
      ),
    );
  }
}

ShapeBorder _shapeButton = const RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30),
    bottomLeft: Radius.circular(30),
  ),
);
