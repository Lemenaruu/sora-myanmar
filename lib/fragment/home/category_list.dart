import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';
import 'package:sora_myanmar/core/error_text.dart';
import 'package:sora_myanmar/core/loader.dart';
import 'package:sora_myanmar/providers/category_provider.dart';


class CategoryList extends ConsumerStatefulWidget {
  const CategoryList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CategoryListState();
}

class _CategoryListState extends ConsumerState<CategoryList>
    with SingleTickerProviderStateMixin {
  int _selectedButton = 0;

  int selectedButton(int index) {
    setState(() {
      _selectedButton = index;

      // changedColor = !changedColor;
    });

    return _selectedButton;
  }

  @override
  Widget build(BuildContext context) {
    print('categorylist');
   
    return ref.watch(allCategoryProvider).when(
          data: (categories) {
            print("categories.length  ---${categories.length}");
            return ListView.builder(
              shrinkWrap: true,
              // reverse: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];

                return Padding(
                  padding: const EdgeInsets.only(
                    right: 0,
                    left: 0,
                  ),

                  child:
                      //  category.name != null
                      //     ?
                      GestureDetector(
                    onTap: () {
                     
                      selectedButton(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          color: _selectedButton == index
                              ? AppColor.red
                              : Colors.pink.shade100,
                          borderRadius: BorderRadius.circular(30),
                          // border: Border.all(color: AppColor.red),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '${category.name}',
                              style: TextStyle(
                                color: _selectedButton == index
                                    ? Colors.white
                                    : AppColor.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // : null,

                  //  category.parent != null
                  //     ? TextButton(
                  //         onPressed: () {
                  //           selectedButton(index);
                  //         },
                  //         style: ButtonStyle(
                  //           backgroundColor: MaterialStateProperty.all(
                  //             _selectedButton == index
                  //                 ? AppColor.red
                  //                 : Colors.pink.shade100,
                  //           ),
                  //           // padding: MaterialStateProperty.all(
                  //           //     const EdgeInsets.symmetric(vertical: 1)),
                  //           shape: MaterialStateProperty.all(
                  //             RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(30),
                  //             ),
                  //           ),
                  //         ),

                  //         child:
                  //          Text(
                  //           "${category.name}",
                  //           style: TextStyle(
                  //             color: _selectedButton == index
                  //                 ? Colors.white
                  //                 : AppColor.red,
                  //             fontWeight: FontWeight.w800,
                  //           ),
                  //         ),
                  //         //   ),
                  //       )
                  //     : null,
                );
              },
            );
          },
          error: (error, stackTrace) {
            return ErrorText(error: error.toString());
          },
          loading: () => const Loader(),
        );

    //
  }
}

class NewCategory extends StatelessWidget {
  const NewCategory({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
  });
  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      // child: Container(
      //   decoration: BoxDecoration(

      //     color: color,
      //     borderRadius: BorderRadius.circular(30),
      //   ),

      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          // padding: MaterialStateProperty.all(
          //     const EdgeInsets.symmetric(vertical: 1)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),

        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w800,
          ),
        ),
        //   ),
      ),
    );
  }
}
