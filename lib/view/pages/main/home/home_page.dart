import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:carrot_market/view/pages/main/home/component/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView.separated(
        // 구분선 그어줌
        itemCount: productList.length,
        itemBuilder: (context, index) => ProductItem(productList[index]),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 16,
          endIndent: 16,
          color: Colors.grey,
        ), // 어떤 구분선을 사용할지
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          Text("좌동"),
          SizedBox(width: 4.0),
          Icon(
            CupertinoIcons.chevron_down,
            size: 15,
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_dash)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Divider(
          thickness: 1,
          height: 1,
          color: Colors.grey,
        ),
      ),
    );
  }
}
