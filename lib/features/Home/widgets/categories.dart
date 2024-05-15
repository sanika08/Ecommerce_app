import 'package:ecommerceapp/features/Home/model/Category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = demo_categories;
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        final double itemWidth = constraints.maxWidth / 4;

        return SizedBox(
          height: size.height * 0.23, // Maintain aspect ratio
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: itemWidth,
                child: CategoryCard(
                  icon: categories[index].icon,
                  title: categories[index].title,
                  press: () {},
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 16 / 4, horizontal: 16 / 4),
          child: Column(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(height: 16 / 2),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
