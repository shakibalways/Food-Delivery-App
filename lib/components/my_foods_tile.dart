
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/foods.dart';

class MyFoodsTile extends StatefulWidget {
  final Foods foods;
  final void Function()? onTap;

  const MyFoodsTile({
    super.key,
    required this.foods,
    required this.onTap,
  });

  @override
  State<MyFoodsTile> createState() => _MyFoodsTileState();
}

class _MyFoodsTileState extends State<MyFoodsTile> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: widget.onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.foods.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$${widget.foods.price}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        widget.foods.discription,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                  SizedBox(width: 15,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      widget.foods.imagePath,
                      height: 120,
                      width: 115,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.tertiary,
            indent: 5,
            endIndent: 5,
          )
        ],
      ),
    );
  }
}
