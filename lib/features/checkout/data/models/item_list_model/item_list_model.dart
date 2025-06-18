import 'order_item_model.dart';

class ItemListModel {
  List<OrderItemModel>? orderItems;

  ItemListModel({this.orderItems});

  factory ItemListModel.fromJson(Map<String, dynamic> json) => ItemListModel(
        orderItems: (json['items'] as List<dynamic>?)
            ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'items': orderItems?.map((e) => e.toJson()).toList(),
      };
}
