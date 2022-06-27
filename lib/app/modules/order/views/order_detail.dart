import 'package:flutter/material.dart';
import 'package:food_app_247/app/modules/order/controllers/order_detail_controller.dart';
import 'package:food_app_247/dimensions.dart';
import 'package:get/get.dart';

class OrderDetail extends GetView<OrderDetailController> {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          pinned: true,
          expandedHeight: 40,
          backgroundColor: Colors.white,
          flexibleSpace: const FlexibleSpaceBar(
            title: Text(
              'Chi tiết đơn hàng',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.more_horiz_sharp,
                color: Dimensions.primaryColor,
              ),
              onPressed: () {
                print("More");
              },
            )
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Dimensions.primaryColor,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        color: Colors.grey,
                        size: 14,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: const Divider(
                            color: Colors.grey,
                            height: 10,
                            thickness: 1,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.fiber_manual_record,
                        color: Colors.grey,
                        size: 14,
                      ),
                      Expanded(
                        child: Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: const Divider(
                            color: Colors.grey,
                            height: 10,
                            thickness: 1,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Dimensions.primaryColor,
                        size: 18,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 38),
                      child: Text('Đã đặt',
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: const Divider(
                          color: Colors.white,
                          height: 10,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Text('Đã lấy',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14))),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: const Divider(
                          color: Colors.white,
                          height: 10,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text('Hoàn thành',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15))),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 42),
                      child: Text('01:47',
                          style: TextStyle(color: Colors.grey, fontSize: 13)),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: const Divider(
                          color: Colors.white,
                          height: 10,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 5, right: 16),
                        child: Text('01:54',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 13))),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: const Divider(
                          color: Colors.white,
                          height: 10,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 38),
                        child: Text('02:01',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 13))),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
          ),
        )),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                      child: Text('Đồ ăn', style: TextStyle(fontSize: 15))),
                  const SizedBox(width: 5),
                  const VerticalDivider(
                    color: Colors.black,
                    width: 1,
                    thickness: 1,
                    indent: 1,
                    endIndent: 1,
                  ),
                  const SizedBox(width: 5),
                  Flexible(
                      child: Text(
                          'Family Chicken - Gà Rán, Bánh Gà & Đồ Ăn Vặt - Hồ Tùng Mậu',
                          style: TextStyle(fontSize: 15),
                          overflow: TextOverflow.ellipsis))
                ],
              ),
            ),
            Text('71,500đ - 4 phần - Ví ShoppePay'),
            Text('Chính Phí - 0834331595')
          ]),
        )),
        SliverToBoxAdapter(
          child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Text('Giao đến',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  '[Nhà số 6 ngách 20/30] Ngõ 20 đường Hồ Tùng Mậu, P.Mai Dịch, Q.Cầu Giấy, TP.Hà Nội, Việt Nam',
                  style: TextStyle(fontSize: 15)),
              Text('Thời gian hoàn tất: 29/04/2022 02:01')
            ],
          ),
        )),
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
          ),
        )),
        SliverToBoxAdapter(
          child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Đơn hoàn tất',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  Icon(
                    Icons.chat_rounded,
                    size: 22,
                    color: Colors.black87,
                  ),
                ],
              )),
        ),
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
          ),
        )),
        SliverToBoxAdapter(
          child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                children: [
                  Flexible(
                      child: Text(
                          'Family Chicken - Gà Rán, Bánh Gà & Đồ Ăn Vặt - Hồ Tùng Mậu',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis)),
                  Icon(
                    Icons.chevron_right_outlined,
                    size: 24,
                  ),
                ],
              )),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                    child: Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/bun_dau.png'),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text('1 x Xúc xích chiên giòn',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15)),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('9000đ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('10000đ',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough))
                        ],
                      ),
                    )
                  ],
                )),
              );
            },
            childCount: 4,
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tổng (4 phần)',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Text('36,000đ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500))
                  ],
                ))),
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
          ),
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Phí giao hàng (0.5km)'), Text('15,000đ')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Phí áp dụng'), Text('10,000đ')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Giảm giá'), Text('-10,000đ')],
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text(
                '71,500đ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                textAlign: TextAlign.right,
              )),
        ),
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
          ),
        )),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chi tiết đơn hàng',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Mã đơn hàng'), Text('29042-064363235')],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Thời gian đặt'), Text('01:47 29/04/2022')],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Phương thức thanh toán'),
                  Text('Ví ShoppePay')
                ],
              )
            ],
          ),
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      print('Đánh giá');
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: Text(
                        'Đánh giá',
                        style:
                            TextStyle(fontSize: 18, color: Colors.deepOrange),
                      )),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      print('Đặt lại');
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepOrange),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.deepOrange,
                        ),
                        child: Center(
                            child: Text(
                          'Đặt lại',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ))),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
