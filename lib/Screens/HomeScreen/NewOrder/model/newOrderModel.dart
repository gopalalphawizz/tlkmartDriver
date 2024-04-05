// To parse this JSON data, do
//
//     final newOrderModel = newOrderModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

NewOrderModel newOrderModelFromJson(String str) =>
    NewOrderModel.fromJson(json.decode(str));

String newOrderModelToJson(NewOrderModel data) => json.encode(data.toJson());

class NewOrderModel {
  bool status;
  String message;
  List<DatumNewOrder> data;

  NewOrderModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory NewOrderModel.fromJson(Map<String, dynamic> json) => NewOrderModel(
        status: json["status"],
        message: json["message"],
        data: List<DatumNewOrder>.from(
            json["data"].map((x) => DatumNewOrder.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class DatumNewOrder {
  int orderId;
  String customerName;
  String orderStatus;
  String productName;
  int totalDelivery;
  String expected_delivery_date;
  ShippingAddress shippingAddress;

  DatumNewOrder({
    required this.orderId,
    required this.customerName,
    required this.orderStatus,
    required this.productName,
    required this.totalDelivery,
    required this.expected_delivery_date,
    required this.shippingAddress,
  });

  factory DatumNewOrder.fromJson(Map<String, dynamic> json) => DatumNewOrder(
        orderId: json["order_id"],
        customerName: json["customer_name"],
        orderStatus: json["order_status"],
        productName: json["product_name"],
        totalDelivery: json["total_delivery"],
        expected_delivery_date: json["expected_delivery_date"] ?? "",
        shippingAddress: ShippingAddress.fromJson(json["shipping_address"]),
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "customer_name": customerName,
        "order_status": orderStatus,
        "product_name": productName,
        "total_delivery": totalDelivery,
        "expected_delivery_date": expected_delivery_date,
        "shipping_address": shippingAddress.toJson(),
      };
}

class ShippingAddress {
  String id;
  String customerId;
  String contactPersonName;
  String addressType;
  String address;
  String address1;
  String city;
  String zip;
  String phone;
  String altPhone;
  String createdAt;
  String updatedAt;
  String state;
  String country;
  String latitude;
  String longitude;
  String isBilling;

  ShippingAddress({
    required this.id,
    required this.customerId,
    required this.contactPersonName,
    required this.addressType,
    required this.address,
    required this.address1,
    required this.city,
    required this.zip,
    required this.phone,
    required this.altPhone,
    required this.createdAt,
    required this.updatedAt,
    required this.state,
    required this.country,
    required this.latitude,
    required this.longitude,
    required this.isBilling,
  });

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      ShippingAddress(
        id: json["id"],
        customerId: json["customer_id"],
        contactPersonName: json["contact_person_name"],
        addressType: json["address_type"],
        address: json["address"],
        address1: json["address1"],
        city: json["city"],
        zip: json["zip"],
        phone: json["phone"],
        altPhone: json["alt_phone"] ?? "",
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        state: json["state"] ?? "",
        country: json["country"] ?? "",
        latitude: json["latitude"] ?? "0.0",
        longitude: json["longitude"] ?? "0.0",
        isBilling: json["is_billing"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_id": customerId,
        "contact_person_name": contactPersonName,
        "address_type": addressType,
        "address": address,
        "address1": address1,
        "city": city,
        "zip": zip,
        "phone": phone,
        "alt_phone": altPhone,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "state": state,
        "country": country,
        "latitude": latitude,
        "longitude": longitude,
        "is_billing": isBilling,
      };
}
