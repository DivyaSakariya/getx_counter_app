class ProductModal {
  final String title;
  final String description;
  final int price;
  final double discountPercentage;
  final double rating;
  final double stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List images;

  ProductModal({
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory ProductModal.fromMap({required Map data}) {
    return ProductModal(
      title: data['title'],
      description: data['description'],
      price: data['price'],
      discountPercentage: data['discountPercentage'],
      rating: data['rating'],
      stock: data['stock'],
      brand: data['brand'],
      category: data['category'],
      thumbnail: data['thumbnail'],
      images: data['images'],
    );
  }
}
