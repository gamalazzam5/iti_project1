import 'package:flutter/material.dart';

import '../../../core/utils/app_text_styles.dart';
import 'history_orders_view.dart';
import 'ongoing_orders_view.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: true,
          title: Text(
            'Orders',
            style: AppTextStyles.k24TextButton,
          ),
          bottom: TabBar(
            indicatorColor: Colors.orange,
            indicatorWeight: 3,
            labelColor: Colors.orange,
            unselectedLabelColor: const Color(0xff6D3805),
            labelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            tabs: const [
              Tab(text: 'Ongoing'),
              Tab(text: 'History'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OngoingOrdersView(),
            HistoryOrdersView(),
          ],
        ),
      ),
    );
  }
}