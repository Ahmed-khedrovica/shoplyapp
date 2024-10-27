import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lordicon/lordicon.dart';
import 'package:stylish_app/modules/Cart_Payment/Pages/shopping_bag_screen.dart';

import '../Cubit/main_cubit.dart';
import '../Cubit/main_state.dart';


class ShippingScreen extends StatelessWidget {
  const ShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> Texts = [
      Container(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffA8A8A9),
                  ),
                ),
                Text(
                  '100 EGP',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffA8A8A9),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping  ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffA8A8A9),
                  ),
                ),
                Text(
                  '30 EGP',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffA8A8A9),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  '130 EGP',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Payment',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            fit: BoxFit.contain,
                            'assets/images/visa.png',
                            width: MediaQuery.sizeOf(context).width * 0.1,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                          ),
                        ),
                        hintText: '********219',
                        hintStyle: const TextStyle(),
                        enabled: true,
                        filled: false,
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.08,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        fit: BoxFit.contain,
                        'assets/images/Master.png',
                        width: MediaQuery.sizeOf(context).width * 0.1,
                        height: MediaQuery.sizeOf(context).height * 0.05,
                      ),
                    ),
                    hintText: '********219',
                    hintStyle: const TextStyle(),
                    enabled: true,
                    filled: false,
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.08,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        fit: BoxFit.contain,
                        'assets/images/Paypal.png',
                        width: MediaQuery.sizeOf(context).width * 0.1,
                        height: MediaQuery.sizeOf(context).height * 0.05,
                      ),
                    ),
                    hintText: '********219',
                    hintStyle: const TextStyle(),
                    enabled: true,
                    filled: false,
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.08,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        fit: BoxFit.contain,
                        'assets/images/Apple.png',
                        width: MediaQuery.sizeOf(context).width * 0.1,
                        height: MediaQuery.sizeOf(context).height * 0.05,
                      ),
                    ),
                    hintText: '********219',
                    hintStyle: const TextStyle(),
                    enabled: true,
                    filled: false,
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
          ],
        ),
      ),
    ];
    var controller =
        IconController.assets('assets/Animations/Pay_Complete.json');
    controller.addStatusListener((status) {
      controller.playFromBeginning();
    });
    return BlocProvider(
        create: (context) => mainCubit(),
        child: BlocConsumer<mainCubit, mainState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is BackState) {
              return ShoppingBagScreen();
            }
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                shadowColor: Colors.black,
                elevation: 0.5,
                toolbarHeight: 60,
                title: const Text(
                  'Payment',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () =>
                      BlocProvider.of<mainCubit>(context).navigateBack(),
                ),
              ),
              body: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.65,
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Texts[index];
                            },
                            separatorBuilder: (context, index) {
                              return Divider();
                            },
                            itemCount: Texts.length),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.white,
                                    title: Column(
                                      children: [
                                        IconViewer(
                                          controller: controller,
                                          width: 200,
                                          height: 200,
                                        ),
                                        Text("Payment done successfully.")
                                      ],
                                    ),
                                  );
                                });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffF83758),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text('Continue',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "MontserratB",
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
