import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/models/foods.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodDetails extends StatefulWidget {
  final Foods foods;
  final Map<Addon, bool> selectAddon = {};

  FoodDetails({
    super.key,
    required this.foods,
  }) {
    for (Addon addon in foods.availableAddon) {
      selectAddon[addon] = false;
    }
  }

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  // method add to the cart
  void addToCart(Foods foods, Map<Addon,bool> selectAddon){
    // close the current food page to go back to menu
    Navigator.pop(context);

    List<Addon> currentSelectedAddons =[];
    for(Addon addon in foods.availableAddon){
      if(widget.selectAddon[addon] == true){
        currentSelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(foods, currentSelectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food image
                Image.asset(
                  widget.foods.imagePath,
                  height: 400,
                  fit: BoxFit.fitHeight,
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(
                        widget.foods.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      // food price

                      Text(
                        "\$${widget.foods.price}",
                        style: const TextStyle(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // food discription
                      Text(
                        widget.foods.discription,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      // addons

                      Text(
                        "Add-Ons",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color:
                                Theme.of(context).colorScheme.secondary)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.foods.availableAddon.length,
                          itemBuilder: (context, index) {
                            Addon addon = widget.foods.availableAddon[index];
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                "\$${addon.price}",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: widget.selectAddon[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectAddon[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                      // button add to the cart
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                MyButton(
                  onTap: () =>addToCart(widget.foods, widget.selectAddon),
                  text: "Add To Cart",
                ),
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.7,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        )
      ],
    );
  }

}