import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/modules/Cart_Payment/Pages/product_item_widget.dart';
import 'package:stylish_app/modules/Cart_Payment/Pages/shopping_bag_screen.dart';

import '../Cubit/main_cubit.dart';
import '../Cubit/main_state.dart';

List<Product> Items = [
  Product(
    imageUrl: 'assets/images/FEMALE_model.png',
    title: 'Women\'s Casual Wear',
    variations: 'Black, Red',
    rating: 4.8,
    price: 34.00,
    discountPrice: 67.00,
  ),
  Product(
    imageUrl: 'assets/images/MAN_model.png',
    title: 'Men\'s Jacket',
    variations: 'Green, Grey',
    rating: 4.7,
    price: 45.00,
    discountPrice: 67.00,
  ),
];
int current_index = 0;

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  static const String id = "CheckOutScreen";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => mainCubit(),
      child: BlocConsumer<mainCubit, mainState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ShoppingPagScreenState) {
            return ShoppingBagScreen();
          }
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              elevation: 0.7,
              toolbarHeight: 60,
              title: const Text(
                'Checkout',
                style: TextStyle(
                    fontFamily: "MontserratB",
                    fontSize: 25,
                    color: Colors.black),
              ),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            body: Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.location_on_outlined),
                              ),
                              Text(
                                'Delivery Address',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              255, 190, 189, 189),
                                          offset: Offset(1, 1),
                                          spreadRadius: 1,
                                          blurRadius: 9)
                                    ]),
                                padding: const EdgeInsets.all(10),
                                height:
                                    MediaQuery.sizeOf(context).height * 0.11,
                                width: MediaQuery.sizeOf(context).width * 0.6,
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Address :\n 216 St Pauls Rd, London N1 2LL,UK Contact :  +44-784232',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              255, 192, 192, 192),
                                          offset: Offset(1, 1),
                                          spreadRadius: 1,
                                          blurRadius: 10),
                                    ]),
                                height:
                                    MediaQuery.sizeOf(context).height * 0.11,
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_circle_outline,
                                      size: 60,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shopping List',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height * 0.6,
                            child: ListView.builder(
                              itemCount: Items.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: GestureDetector(
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.3,
                                      width: MediaQuery.sizeOf(context).width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: List.of([
                                          BoxShadow(
                                              offset: Offset(0, 1),
                                              blurRadius: 2,
                                              color: Colors.grey)
                                        ]),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                child: Image.asset(
                                                  Items[index].imageUrl,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.2,
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.2,
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.5,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      Items[index].title,
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                        'Variations: ${Items[index].variations}'),
                                                    Row(
                                                      children: [
                                                        Text(Items[index]
                                                            .rating
                                                            .toString()),
                                                        Row(
                                                          children:
                                                              List.generate(
                                                            5,
                                                            (index) => Icon(
                                                              Icons.star,
                                                              color: index < 0
                                                                  ? const Color(
                                                                      0xffF7B305)
                                                                  : const Color(
                                                                      0xffBBBBBB),
                                                              size: 16,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          '\$${Items[index].price}',
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 40),
                                                        Column(
                                                          children: [
                                                            const Text(
                                                              'upto 33% off',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red),
                                                            ),
                                                            Text(
                                                              '\$${Items[index].discountPrice}',
                                                              style:
                                                                  const TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Divider(),
                                          Text(
                                            'Total Order (1): ${Items[index].price} EGP',
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      current_index = index;
                                      BlocProvider.of<mainCubit>(context)
                                          .navigateToBag();
                                    },
                                  ),
                                );
                              },
                              itemExtent:
                                  MediaQuery.sizeOf(context).height * 0.28,
                              padding: EdgeInsets.all(1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
