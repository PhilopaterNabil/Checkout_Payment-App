import 'package:checkout_payment_app/features/checkout/data/models/amount_model/amount_model.dart';
import 'package:checkout_payment_app/features/checkout/data/models/amount_model/details.dart';
import 'package:checkout_payment_app/features/checkout/data/models/item_list_model/item_list_model.dart';
import 'package:checkout_payment_app/features/checkout/data/models/item_list_model/order_item_model.dart';

({AmountModel amount, ItemListModel itemList}) getTransactionsData() {
  var amount = AmountModel(
    currency: 'USD',
    total: '100',
    details: Details(
      subtotal: '100',
      shipping: '0',
      shippingDiscount: 0,
    ),
  );

  List<OrderItemModel> orderItems = [
    OrderItemModel(
      name: 'Apple',
      quantity: 4,
      price: '10',
      currency: 'USD',
    ),
    OrderItemModel(
      name: 'Pineapple',
      quantity: 5,
      price: '12',
      currency: 'USD',
    ),
  ];

  var itemList = ItemListModel(orderItems: orderItems);
  return (amount: amount, itemList: itemList);
}
