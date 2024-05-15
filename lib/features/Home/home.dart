import 'package:ecommerceapp/features/Home/widgets/categories.dart';
import 'package:ecommerceapp/features/Home/widgets/newArrival.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.5,
                      height: size.height * 0.055,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade100.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.shopping_cart),
                        SizedBox(width: 15),
                        Icon(Icons.notifications),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 180,
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      child: PageView(
                        children: const [
                          Image(
                            image: AssetImage('images/banner.jpg'),
                          ),
                          Image(image: AssetImage('images/banner.jpg')),
                          Image(image: AssetImage('images/banner.jpg')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Categories(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Arrival",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              const NewArrival(),
            ],
          ),
        ),
      ),
    );
  }
}
