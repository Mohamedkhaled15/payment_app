import '../features/checkout/data/models/amount_model/amount_model.dart';
import '../features/checkout/data/models/amount_model/details.dart';
import '../features/checkout/data/models/items_list_model/item.dart';
import '../features/checkout/data/models/items_list_model/items_list_model.dart';

({AmountModel amount, ItemsListModel itemList}) getTransactionsData() {
  var amount = AmountModel(
      currency: 'USD',
      total: "100",
      details: Details(shipping: "0", shippingDiscount: 0, subtotal: '100'));
  List<OrderItemModel> orders = [
    OrderItemModel(currency: 'USD', name: 'Apple', price: '4', quantity: 10),
    OrderItemModel(currency: 'USD', name: 'Apple', price: '5', quantity: 12)
  ];
  var itemList = ItemsListModel(orders: orders);

  return (amount: amount, itemList: itemList);
}
