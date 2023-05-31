class CatalogModel {
  static List<Item> items = [
    Item(
      name: "Iphone11",
      id: "VED101",
      desc: "12thgen",
      price: 999,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
    ),
    Item(
      name: "Pixel5",
      id: "New",
      desc: "12thgen",
      price: 500,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd0JhwLvm_uLDLc-la7hK9WyVpe9naJFcebKfhcICiq2KtvXDePNAU_9QO06LPcQ0K0fLByc7m&usqp=CAc",
    ),
    Item(
        name: "MacbookAir",
        id: "Ved123",
        desc: "69gen",
        price: 1000,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMOMstwtmLnjFb3NHiDJ_kcQnueNVH-rv_3ps96HZmXlFumKWaiBqq_L4Uoyx3iFiNTrXNEbyB&usqp=CAc"),
    Item(
        name: "Airpods Pro",
        id: "Ved1231",
        desc: "69gen",
        price: 300,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQROEs084z65psoo06zYl5R0tUzywOVKVQZzmzqCj3PDP1vVJTWv3gGwGMFENSy4qV4n7sEQjE&usqp=CAc"),
    Item(
        name: "IpadPro",
        id: "Ved1236",
        desc: "10gen",
        price: 600,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNzUeRQ5uH7E3hpECib8qxdhfHv6SnUGT7mOsew_xiOoqRR7ZpdH-TQ4J6-HuIEfqHimYyPXWH&usqp=CAc"),
    Item(
        name: "Galaxy S21 Ultra",
        id: "Ved1237",
        desc: "9gen",
        price: 6000,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT_PZcc0wicVYR992s5QCIDLYy8t-z-9kibTUdWZBN2sd86aaqdAJfhvxAwZNWV9wfdzDikpr1&usqp=CAc"),
    Item(
        name: "Galaxy S21",
        id: "Ved12365",
        desc: "10gen",
        price: 700,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNzUeRQ5uH7E3hpECib8qxdhfHv6SnUGT7mOsew_xiOoqRR7ZpdH-TQ4J6-HuIEfqHimYyPXWH&usqp=CAc"),
  ];
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
}

class Item {
  late final String name;
  late final String id;
  late final String desc;
  late final num price;
  late final String image;

  Item(
      {required this.name,
      required this.id,
      required this.desc,
      required this.price,
      required this.image});
  Item.fromMap(Map<String, dynamic> map) {
    Item(
        name: map["name"],
        id: map["id"],
        desc: map["desc"],
        image: map["image"],
        price: map["price"]);
  }
  toMap() => {
        "name": name,
        "id": id,
        "desc": desc,
        "image ": image,
        "price": price,
      };
}
