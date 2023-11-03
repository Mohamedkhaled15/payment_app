/// items : [{"name":"Apple","quantity":4,"price":"10","currency":"USD"},{"name":"Pineapple","quantity":5,"price":"12","currency":"USD"}]

class ItemListModel {
  ItemListModel({
      List<Items> items,}){
    _items = items;
}

  ItemListModel.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items.add(Items.fromJson(v));
      });
    }
  }
  List<Items> _items;
ItemListModel copyWith({  List<Items> items,
}) => ItemListModel(  items: items ?? _items,
);
  List<Items> get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// name : "Apple"
/// quantity : 4
/// price : "10"
/// currency : "USD"

class Items {
  Items({
      String name, 
      num quantity, 
      String price, 
      String currency,}){
    _name = name;
    _quantity = quantity;
    _price = price;
    _currency = currency;
}

  Items.fromJson(dynamic json) {
    _name = json['name'];
    _quantity = json['quantity'];
    _price = json['price'];
    _currency = json['currency'];
  }
  String _name;
  num _quantity;
  String _price;
  String _currency;
Items copyWith({  String name,
  num quantity,
  String price,
  String currency,
}) => Items(  name: name ?? _name,
  quantity: quantity ?? _quantity,
  price: price ?? _price,
  currency: currency ?? _currency,
);
  String get name => _name;
  num get quantity => _quantity;
  String get price => _price;
  String get currency => _currency;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['quantity'] = _quantity;
    map['price'] = _price;
    map['currency'] = _currency;
    return map;
  }

}