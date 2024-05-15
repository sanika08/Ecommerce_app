class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: "images/Tshirt.svg",
    title: "T-Shirts",
  ),
  Category(
    icon: "images/shirt.svg",
    title: "Shirts",
  ),
  Category(
    icon: "images/dress.svg",
    title: "Dress",
  ),
  Category(
    icon: "images/pants.svg",
    title: "Pants",
  ),
];
