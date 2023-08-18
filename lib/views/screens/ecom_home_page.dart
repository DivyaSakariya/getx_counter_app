import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/controllers/cart_controller.dart';
import 'package:getx_counter_app/helpers/api_helper.dart';
import 'package:getx_counter_app/modals/api_modal.dart';
import 'package:getx_counter_app/views/components/my_back_btn.dart';

class EcomHomePage extends StatelessWidget {
  EcomHomePage({super.key});

  CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ecommerce App"),
        centerTitle: true,
        leading: myBackBtn(),
        actions: [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: FutureBuilder(
          future: ApiHelper.apiHelper.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  ProductModal products = snapshot.data![index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        foregroundImage: NetworkImage(
                          products.thumbnail,
                        ),
                      ),
                      title: Text(products.title),
                      subtitle: Text(products.price.toString()),
                      trailing: IconButton(
                        onPressed: () {
                          if (cartController.cartItems.contains(products)) {
                            Get.snackbar(
                              'Already in Cart...!!!',
                              'Product ${products.title}',
                            );
                          } else {
                            cartController.addToCart(products: products);
                            Get.snackbar(
                              'Added Successfully...!!!',
                              'Product ${products.title}',
                            );
                          }
                        },
                        icon: const Icon(Icons.add_shopping_cart_rounded),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
