class Account {
  String username;
  String password;
  String displayName;

  Account({
    required this.username,
    required this.password,
    required this.displayName,
  });
}

Account account = Account(
  username: "angga",
  password: "065",
  displayName: "Admin UNIQLO",
);

class Product {
  int id;
  String productName;
  String type;
  String details;
  String price;
  String imageUrl;
  int likeCount;
  int stock;
  List<String> sizes;

  Product({
    required this.id,
    required this.productName,
    required this.type,
    required this.details,
    required this.price,
    required this.imageUrl,
    required this.likeCount,
    required this.stock,
    required this.sizes,
  });
}

final List<Product> catalog = [
  Product(
    id: 101,
    productName: "AIRism Cotton Oversized T-Shirt",
    type: "T-Shirt",
    price: "Rp199.000",
    imageUrl: "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab",
    details:
        "Kaos oversized dengan bahan nyaman dan cocok digunakan untuk aktivitas sehari-hari.",
    likeCount: 28,
    stock: 35,
    sizes: ["S", "M", "L", "XL"],
  ),
  Product(
    id: 102,
    productName: "Crew Neck Short Sleeve T-Shirt",
    type: "T-Shirt",
    price: "Rp149.000",
    imageUrl: "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab",
    details:
        "Kaos dengan desain sederhana yang mudah dipadukan dengan berbagai jenis pakaian.",
    likeCount: 19,
    stock: 42,
    sizes: ["S", "M", "L", "XL"],
  ),
  Product(
    id: 103,
    productName: "Graphic Print T-Shirt",
    type: "T-Shirt",
    price: "Rp299.000",
    imageUrl: "https://images.unsplash.com/photo-1503341504253-dff4815485f1",
    details:
        "Kaos dengan desain grafis modern untuk memberikan tampilan casual dan stylish.",
    likeCount: 36,
    stock: 27,
    sizes: ["S", "M", "L"],
  ),
  Product(
    id: 104,
    productName: "Ultra Light Down Jacket",
    type: "Jacket",
    price: "Rp999.000",
    imageUrl: "https://images.unsplash.com/photo-1548883354-94bcfe321cbb",
    details:
        "Jaket ringan dengan desain praktis yang dapat digunakan untuk berbagai aktivitas.",
    likeCount: 47,
    stock: 18,
    sizes: ["S", "M", "L", "XL"],
  ),
  Product(
    id: 105,
    productName: "Fleece Full-Zip Jacket",
    type: "Jacket",
    price: "Rp599.000",
    imageUrl: "https://images.unsplash.com/photo-1551028719-00167b16eac5",
    details:
        "Jaket berbahan fleece yang lembut dan memberikan rasa hangat saat digunakan.",
    likeCount: 32,
    stock: 23,
    sizes: ["M", "L", "XL"],
  ),
  Product(
    id: 106,
    productName: "Wide Straight Jeans",
    type: "Pants",
    price: "Rp599.000",
    imageUrl: "https://images.unsplash.com/photo-1542272604-787c3835535d",
    details:
        "Celana jeans dengan potongan wide straight yang memberikan tampilan modern.",
    likeCount: 41,
    stock: 31,
    sizes: ["28", "30", "32", "34"],
  ),
  Product(
    id: 107,
    productName: "Smart Ankle Pants",
    type: "Pants",
    price: "Rp499.000",
    imageUrl: "https://images.unsplash.com/photo-1624378439575-d8705ad7ae80",
    details:
        "Celana dengan desain clean dan modern yang cocok untuk tampilan casual maupun formal.",
    likeCount: 25,
    stock: 26,
    sizes: ["28", "30", "32", "34"],
  ),
  Product(
    id: 108,
    productName: "Round Mini Shoulder Bag",
    type: "Bag",
    price: "Rp299.000",
    imageUrl: "https://images.unsplash.com/photo-1594223274512-ad4803739b7c",
    details:
        "Tas bahu berukuran compact dengan desain minimalis untuk menemani aktivitas sehari-hari.",
    likeCount: 33,
    stock: 15,
    sizes: ["One Size"],
  ),
  Product(
    id: 109,
    productName: "UV Protection Cap",
    type: "Accessories",
    price: "Rp199.000",
    imageUrl: "https://images.unsplash.com/photo-1588850561407-ed78c282e89b",
    details:
        "Topi dengan desain casual yang cocok digunakan sebagai pelengkap berbagai gaya.",
    likeCount: 22,
    stock: 20,
    sizes: ["One Size"],
  ),
];
