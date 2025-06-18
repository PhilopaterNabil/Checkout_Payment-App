import 'package:checkout_payment_app/features/checkout/data/models/ephemeral_key_model/associated_object.dart';

class EphemeralKeyModel {
  String? id;
  String? object;
  List<AssociatedObject>? associatedObjects;
  int? created;
  int? expires;
  bool? liveMode;
  String? secret;

  EphemeralKeyModel({
    this.id,
    this.object,
    this.associatedObjects,
    this.created,
    this.expires,
    this.liveMode,
    this.secret,
  });

  EphemeralKeyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    if (json['associated_objects'] != null) {
      associatedObjects = <AssociatedObject>[];
      json['associated_objects'].forEach((v) {
        associatedObjects!.add(AssociatedObject.fromJson(v));
      });
    }
    created = json['created'];
    expires = json['expires'];
    liveMode = json['livemode'];
    secret = json['secret'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['object'] = object;
    if (associatedObjects != null) {
      data['associated_objects'] =
          associatedObjects!.map((v) => v.toJson()).toList();
    }
    data['created'] = created;
    data['expires'] = expires;
    data['livemode'] = liveMode;
    data['secret'] = secret;
    return data;
  }
}
