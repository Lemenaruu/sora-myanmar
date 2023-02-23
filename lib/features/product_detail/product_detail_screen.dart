import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  List<Color> Clrs = [Colors.black, Colors.blue, Colors.orange, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.heart))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.grey.shade100,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.grey.shade300,
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/earphone.png',
                            fit: BoxFit.cover,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade300,
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/earphone.png',
                            fit: BoxFit.cover,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade300,
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/earphone.png',
                            fit: BoxFit.cover,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/earphone.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.pink.shade100),
                      onPressed: () {},
                      child: const Text(
                        'Used',
                        style: TextStyle(color: Colors.red),
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
                          radius: 10,
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
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            elevation: 0,
                            // color: Colors.amber,
                            height: 10,
                            minWidth: 20,
                            onPressed: () {},
                            child: const Icon(
                              CupertinoIcons.minus,
                              size: 20,
                            ),
                          ),
                          MaterialButton(
                            shape: const RoundedRectangleBorder(),
                            elevation: 0,
                            // color: Colors.amber,
                            height: 10,
                            minWidth: 20,
                            onPressed: () {},
                            child: const Text('1'),
                          ),
                          MaterialButton(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            elevation: 0,
                            // color: Colors.amber,
                            height: 10,
                            minWidth: 20,
                            onPressed: () {},
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
                  title: const Text('Features'),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Good quality')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Good quality')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Good quality')
                        ],
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('More details'),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              'ZEBRONICS Zeb-Thunder Bluetooth Wireless ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              'ZEBRONICS Zeb-Thunder Bluetooth Wireless ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              'ZEBRONICS Zeb-Thunder Bluetooth Wireless ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Gifts'),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Free bill 1000')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Free bill 1000')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Free bill 1000')
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    shadowColor: Colors.grey,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(4.0)),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width,
                      50,
                    ), //////// HERE
                  ),
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
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   icon: const Icon(Icons.edit),
      //   label: const Text('Edit'),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // bottomSheet:
    );
  }
}
