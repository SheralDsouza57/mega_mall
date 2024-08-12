class HomeModel {
  final List<String> banners;
  final List<String> categories;
  final List<String> categoryHeading;
  final List<String> products;
  final List<String> productName;
  final List<String> productPrice;

  HomeModel(
      {required this.banners,
      required this.categories,
      required this.products,
      required this.categoryHeading,
      required this.productName,
      required this.productPrice});
}
