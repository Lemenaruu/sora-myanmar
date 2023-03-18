import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_myanmar/providers/category_provider.dart';

import '../../constants/widgets_constants.dart';
import '../../core/error_text.dart';
import '../../core/loader.dart';

class Accessories extends ConsumerStatefulWidget {
  const Accessories({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccessoriesState();
}

class _AccessoriesState extends ConsumerState<Accessories> {
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
    final category = ref.watch(getCategoryDetail(1));
    final categories = ref.watch(allCategoryProvider);
    return ref.watch(allCategoryProvider).when(
          data: (categories) {
            return SizedBox(
              // color: Colors.teal,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.32,
              // color: Colors.amberAccent,
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  // final image = product.productPicture![index].image;

                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              color: Colors.grey.shade100,
                              height: MediaQuery.of(context).size.height * 0.22,
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 20,
                                    right: 1,
                                    left: 1,
                                    child: category.picture != null
                                        ? Image.network(
                                            'https://sora-mart.com/storage/product_picture/6374b3d9c2ecc_photo.png',

                                            // 'https://sora-mart.com/storage/${product.productPicture?.elementAt(index).image}',
                                            // width: 100,
                                            height: 130,
                                            fit: BoxFit.contain,
                                          )
                                        : Image.network(
                                            'https://sora-mart.com/storage/product_picture/6374b3d9c2ecc_photo.png',
                                            // width: 100,
                                            height: 130,
                                            fit: BoxFit.contain,
                                          ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: category.code != null
                                        ? Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(50),
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
                                        : Container(
                                            decoration: BoxDecoration(
                                              color: AppColor.red,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: Text(
                                                '- 30%',
                                                style: txtMedium.copyWith(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
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
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: category.name != null
                              ? Text(
                                  // TODO something
                                  "${category.name}",
                                  style: txtMedium.copyWith(
                                      fontSize: 10,
                                      overflow: TextOverflow.visible),
                                )
                              : null,
                        ),
                        category.id != null
                            ? Text(
                                'MMK ${category.id}',
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
