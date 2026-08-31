/// Simple data model for a coffee / menu item.
class Coffee {
  final String name;
  final String description;
  final int price; // harga dalam Rupiah
  final String imageUrl;

  const Coffee({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}
