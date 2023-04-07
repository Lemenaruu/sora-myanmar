import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/core/error_text.dart';
import 'package:sora_myanmar/providers/product_provider.dart';

import '../../constants/widgets_constants.dart';
import '../../core/loader.dart';
import '../../providers/route_provider.dart';

class MostPopularProductsCard extends ConsumerStatefulWidget {
  const MostPopularProductsCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MostPopularProductsCardState();
}

class _MostPopularProductsCardState
    extends ConsumerState<MostPopularProductsCard> {
  final List<int> _selectedIndex = [];
  void isFavourite(int index) {
    // _isFavourite = selectedIndex.contains(index);
    if (_selectedIndex.contains(index)) {
      _selectedIndex.remove(index);
    } else {
      _selectedIndex.add(index);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final product = ref.watch(allProductProvider);
    return ref.watch(allProductProvider).when(
          data: (products) {
            // final products = products.where((e) => e.category!.id == 11).toList();
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.32,
              // color: Colors.amberAccent,
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  // print(
                  //     'productPicture image ---- ${product.productPicture?.elementAt(index).image}');

                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.pushNamed(productDetail);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  // color: Colors.amberAccent
                                  // borderRadius: BorderRadius.circular(10),
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 20,
                                      right: 1,
                                      left: 1,
                                      child: product.productPicture != null
                                          ? Image.network(
                                              // "https://sora-mart.com/storage/${product.productPicture!.first.image}",
                                              'https://sora-mart.com/storage/product_picture/6374b3d9c2ecc_photo.png',
                                              height: 130,
                                              fit: BoxFit.contain,
                                            )
                                          : Image.network(
                                              'https://sora-mart.com/storage/product_picture/6374b3d9c2ecc_photo.png',
                                              // width: 100,
                                              height: 130,
                                              fit: BoxFit.fitHeight,
                                            ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: product.discount != null
                                          ? Container(
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Text(
                                                  '- 30%',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                    ),
                                    Positioned(
                                      top: 10,
                                      right: 10,
                                      child: GestureDetector(
                                        onTap: () {
                                          isFavourite(index);
                                        },
                                        child: _selectedIndex.contains(index)
                                            ? const CircleAvatar(
                                                radius: 12,
                                                backgroundColor: Colors.amber,
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              )
                                            : const CircleAvatar(
                                                radius: 12,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                  Icons.favorite_outline,
                                                  color: Colors.grey,
                                                  size: 15,
                                                ),
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          // width:  120,s
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: product.name != null
                              ? Text(
                                  // TODO something
                                  "${product.name}",
                                  style: txtMedium.copyWith(
                                      fontSize: 10,
                                      // color: Colors.amber,
                                      overflow: TextOverflow.visible),
                                )
                              : null,
                        ),
                        product.mmPrice != null
                            ? Text(
                                'MMK ${product.mmPrice}',
                                style: txtMedium,
                              )
                            : const Text(''),
                      ],
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            );
          },
          error: (error, stackTrace) => ErrorText(error: error.toString()),
          loading: () => const Loader(),
        );
  }
}
