import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/modules/Cart_Payment/Pages/shipping_screen.dart';

import '../Cubit/main_cubit.dart';
import '../Cubit/main_state.dart';
import 'Check_Out_Screen.dart';

String? selectedSize;
int? selectedQuantity;

List<String> sizes = ['40', '41', '42', '43', '44'];
List<int> quantities = [1, 2, 3, 4, 5];

class ShoppingBagScreen extends StatelessWidget {
  const ShoppingBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> Texts = [
      Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: MediaQuery.sizeOf(context).width * 0.1,
                child: Icon(Icons.percent_outlined)),
            Container(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: const Text('Apply Coupons',
                    style: TextStyle(fontSize: 20))),
            Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.sizeOf(context).width * 0.3,
              child: const Text('Select',
                  style: TextStyle(fontSize: 20, color: Color(0xffF83758))),
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                width: MediaQuery.sizeOf(context).width,
                child: const Text('Order Payment Details',
                    style: TextStyle(fontSize: 20))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: const Text('Items Price',
                        style: TextStyle(fontSize: 20))),
                Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  child: Text('${Items[current_index].price}',
                      style: TextStyle(fontSize: 20, color: Color(0xffF83758))),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.sizeOf(context).width * 0.45,
                    child: const Text('Convenience',
                        style: TextStyle(fontSize: 20))),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.2,
                  child: Text('Know More',
                      style: TextStyle(fontSize: 15, color: Color(0xffF83758))),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.sizeOf(context).width * 0.25,
                  child: const Text('Apply Coupon',
                      style: TextStyle(fontSize: 15, color: Color(0xffF83758))),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.sizeOf(context).width * 0.1,
                    child: Icon(Icons.motorcycle_rounded)),
                Container(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child:
                        const Text('Shipping', style: TextStyle(fontSize: 20))),
                Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  child: const Text('Free',
                      style: TextStyle(fontSize: 15, color: Color(0xffF83758))),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.1,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.sizeOf(context).width * 0.1,
                    child: Icon(Icons.monetization_on_outlined)),
                Container(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: const Text('Order Total',
                        style: TextStyle(fontSize: 20))),
                Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  child: const Text('100',
                      style: TextStyle(fontSize: 20, color: Color(0xffF83758))),
                ),
              ],
            ),
          ],
        ),
      ),
    ];
    return BlocProvider(
      create: (context) => mainCubit(),
      child: BlocConsumer<mainCubit, mainState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ShoppingPaymentScreenState) {
            return ShippingScreen();
          }
          if (state is BackState) {
            return CheckOutScreen();
          }
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () =>
                    BlocProvider.of<mainCubit>(context).navigateBack(),
              ),
              title: const Text('Shopping Bag'),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border))
              ],
            ),
            body: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: Image.asset(
                              '${Items[current_index].imageUrl}',
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.19,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Details Column
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${Items[current_index].title}',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '${Items[current_index].variations}',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.55,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.1,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // Dropdown for Size
                                          Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.2,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: DropdownButton<String>(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                value: selectedSize,
                                                hint: const Text('Size ',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13)),
                                                items: sizes.map((size) {
                                                  return DropdownMenuItem(
                                                    value: size,
                                                    child: Text(
                                                      size,
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: (value) {
                                                  /*  setState(() {
                                                    selectedSize = value;
                                                  });*/
                                                },
                                                dropdownColor:
                                                    Colors.grey.shade200,
                                                underline: const SizedBox(),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.2,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: DropdownButton<int>(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                value: selectedQuantity,
                                                hint: const Text('Qty',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13)),
                                                items:
                                                    quantities.map((quantity) {
                                                  return DropdownMenuItem(
                                                    value: quantity,
                                                    child: Text(
                                                      quantity.toString(),
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: (value) {
                                                  /*  setState(() {
                                                    selectedQuantity = value;
                                                  });*/
                                                },
                                                dropdownColor:
                                                    Colors.grey.shade200,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            'Delivery by ',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text(
                                            '10 May 2XXX',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )
                                        ],
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
                    /////////////////////////////////////////////////////////////////////////
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      width: MediaQuery.sizeOf(context).width,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Texts[index],
                            );
                          },
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: Texts.length),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
              height: MediaQuery.sizeOf(context).height * 0.15,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 9)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('100 EGP',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                        Text('View Details',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffEA1712))),
                      ],
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.08,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<mainCubit>(context)
                              .navigateToPayment();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF83758),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text('Proceed to Payment',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
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
