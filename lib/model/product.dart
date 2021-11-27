
class Product {
  final int id;
  final String title;
  final String image;
  final double newprice;
  final double oldprice;
  final String size;
  bool isFavourate;

  Product({
     this.id,
     this.title,
     this.image,
     this.newprice,
     this.oldprice,
     this.size,
     this.isFavourate = false,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: 'Shirt',
      image: 'images/1.jpg',
      newprice: 100,
      oldprice: 110,
      size: 'Extra large(XL)'),
  Product(
      id: 2,
      title: 'Coat',
      image: 'images/coat.jpg',
      newprice: 140,
      oldprice: 150,
      size: 'Extra large(XL)'),
  Product(
      id: 3,
      title: 'Men tshirt',
      image: 'images/tshirt.webp',
      newprice: 90,
      oldprice: 110,
      size: 'Extra large(XL)'),
  Product(
      id: 4,
      title: 'Bag',
      image: 'images/lbag.jpg',
      newprice: 70,
      oldprice: 90,
      size: 'Extra large(XL)'),
  Product(
      id: 5,
      title: 'Men_shirt',
      image: 'images/menshirt.jpg',
      newprice: 50,
      oldprice: 60,
      size: 'Extra large(XL)'),
  Product(
      id: 6,
      title: ' New Bag',
      image: 'images/bag.jpg',
      newprice: 40,
      oldprice: 65,
      size: ' Large(L)'),
  Product(
      id: 7,
      title: ' New Brand Tshirt',
      image: 'images/2.jpg',
      newprice: 40,
      oldprice: 65,
      size: ' Large(L)'),
  Product(
      id: 8,
      title: ' New Brand Tshirt',
      image: 'images/3.jpg',
      newprice: 40,
      oldprice: 65,
      size: ' Large(L)'),
];
