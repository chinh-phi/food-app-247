import 'package:flutter/material.dart';
import 'package:food_app_247/app/modules/order/models/OrderDetailModel.dart';
import 'package:food_app_247/app/modules/order/providers/order_api.dart';
import 'package:get/get.dart';

class OrderDetailController extends GetxController {
  var orderInfo = OrderDetailModel().obs;
  var id = Get.parameters["id"]!.substring(1);
  var isDataProcessing = false.obs;

  @override
  void onInit() async {
    super.onInit();
    // Fetch Data
    getData(id);
  }

  void getData(id) async {
    try {
      isDataProcessing(true);
      var res = await OrderApi.getOrderDetail(id);
      if(res.isNotEmpty) {
        orderInfo.value = OrderDetailModel.fromJson(res);
        isDataProcessing(false);
      }
      isDataProcessing(false);
    } catch (exception) {
      isDataProcessing(false);
      showSnackBar("Exception", exception.toString(), Colors.red);
    }
  }

  showSnackBar(String title, String message, Color backgroundColor) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: backgroundColor,
        colorText: Colors.white);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}