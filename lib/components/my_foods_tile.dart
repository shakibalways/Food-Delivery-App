import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/models/foods.dart';

class MyFoodsTile extends StatelessWidget {
  final Foods foods;
  final void Function()? onTap;

  const MyFoodsTile({
    super.key,
    required this.foods,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(foods.name),
                    Text('\$' +foods.price.toString()),
                    Text(foods.discription),
                  ],
                ),
              ),
              Image.asset(foods.imagePath,height: 120,),
            ],
          ),
        ),
      ],
    );
  }
}
