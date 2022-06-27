class PaymentOrderDetailModel {
  int? id;
  int? idRes;
  int? idUser;
  int? idReview;
  String? status;
  String? description;
  int? shippingFee;
  int? tax;
  int? subTotal;
  int? total;
  int? discount;
  int? grandTotal;
  int? idShipper;
  Address? address;
  String? orderedAt;
  String? deliveredAt;
  String? pickedAt;
  String? createdAt;
  String? updatedAt;
  List<Foods>? foods;
  Voucher? voucher;

  PaymentOrderDetailModel(
      {this.id,
        this.idRes,
        this.idUser,
        this.idReview,
        this.status,
        this.description,
        this.shippingFee,
        this.tax,
        this.subTotal,
        this.total,
        this.discount,
        this.grandTotal,
        this.idShipper,
        this.address,
        this.orderedAt,
        this.deliveredAt,
        this.pickedAt,
        this.createdAt,
        this.updatedAt,
        this.foods,
        this.voucher});

  PaymentOrderDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idRes = json['idRes'];
    idUser = json['idUser'];
    idReview = json['idReview'];
    status = json['status'];
    description = json['description'];
    shippingFee = json['shippingFee'];
    tax = json['tax'];
    subTotal = json['subTotal'];
    total = json['total'];
    discount = json['discount'];
    grandTotal = json['grandTotal'];
    idShipper = json['idShipper'];
    address =
    json['address'] != null ? Address.fromJson(json['address']) : null;
    orderedAt = json['orderedAt'];
    deliveredAt = json['deliveredAt'];
    pickedAt = json['pickedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    if (json['foods'] != null) {
      foods = <Foods>[];
      json['foods'].forEach((v) {
        foods!.add(Foods.fromJson(v));
      });
    }
    voucher =
    json['voucher'] != null ? Voucher.fromJson(json['voucher']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['idRes'] = idRes;
    data['idUser'] = idUser;
    data['idReview'] = idReview;
    data['status'] = status;
    data['description'] = description;
    data['shippingFee'] = shippingFee;
    data['tax'] = tax;
    data['subTotal'] = subTotal;
    data['total'] = total;
    data['discount'] = discount;
    data['grandTotal'] = grandTotal;
    data['idShipper'] = idShipper;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    data['orderedAt'] = orderedAt;
    data['deliveredAt'] = deliveredAt;
    data['pickedAt'] = pickedAt;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (foods != null) {
      data['foods'] = foods!.map((v) => v.toJson()).toList();
    }
    if (voucher != null) {
      data['voucher'] = voucher!.toJson();
    }
    return data;
  }
}

class Address {
  String? address;
  double? latitude;
  double? longitude;

  Address({this.address, this.latitude, this.longitude});

  Address.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}

class Foods {
  int? id;
  int? idRes;
  String? name;
  int? price;
  int? prepareTime;
  String? imageLink;
  String? createdAt;
  String? updatedAt;
  int? quantity;

  Foods(
      {this.id,
        this.idRes,
        this.name,
        this.price,
        this.prepareTime,
        this.imageLink,
        this.createdAt,
        this.updatedAt,
        this.quantity});

  Foods.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idRes = json['idRes'];
    name = json['name'];
    price = json['price'];
    prepareTime = json['prepareTime'];
    imageLink = json['imageLink'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['idRes'] = idRes;
    data['name'] = name;
    data['price'] = price;
    data['prepareTime'] = prepareTime;
    data['imageLink'] = imageLink;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['quantity'] = quantity;
    return data;
  }
}

class Voucher {
  int? id;
  int? idRes;
  String? name;
  String? paymentMethod;
  int? totalPay;
  String? type;
  int? value;
  String? createdAt;
  String? updatedAt;

  Voucher(
      {this.id,
        this.idRes,
        this.name,
        this.paymentMethod,
        this.totalPay,
        this.type,
        this.value,
        this.createdAt,
        this.updatedAt});

  Voucher.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idRes = json['idRes'];
    name = json['name'];
    paymentMethod = json['paymentMethod'];
    totalPay = json['totalPay'];
    type = json['type'];
    value = json['value'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['idRes'] = idRes;
    data['name'] = name;
    data['paymentMethod'] = paymentMethod;
    data['totalPay'] = totalPay;
    data['type'] = type;
    data['value'] = value;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
