import 'package:flutter/material.dart';
import '../../core/utils/app_colors/app_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderCard(),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: DashboardSection(), // ⬅️ Dashboard integrated here
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 56, 20, 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF005BEA), Color(0xFF00C6FB)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Image(
                image: AssetImage('assets/images/carverifyimage_1.png'),
                height: 30,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/carverifyimage_1.png'),
                radius: 20,
              )
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Welcome, Abner',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Ready to document your vehicle's condition?",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
class DashboardSection extends StatelessWidget {
  const DashboardSection({super.key});

  final List<_DashboardItem> items = const [
    _DashboardItem(
      title: 'View report',
      imagePath: 'assets/images/carverifyimage_1.png',
    ),
    _DashboardItem(
      title: 'All Inspection',
      imagePath: 'assets/images/carverifyimage_1.png',
    ),
    _DashboardItem(
      title: 'Manage Fleet',
      imagePath: 'assets/images/carverifyimage.png',
    ),
    _DashboardItem(
      title: 'Manage Employee',
      imagePath: 'assets/images/carverifyimage.png',
    ),
    _DashboardItem(
      title: 'Manage Employee',
      imagePath: 'assets/images/carverifyimage.png',
    ),
    _DashboardItem(
      title: 'Manage Employee',
      imagePath: 'assets/images/carverifyimage.png',
    ),
    _DashboardItem(
      title: 'Manage Employee',
      imagePath: 'assets/images/carverifyimage.png',
    ),
    _DashboardItem(
      title: 'Manage Employee',
      imagePath: 'assets/images/carverifyimage.png',
    ),
    _DashboardItem(
      title: 'Manage Employee',
      imagePath: 'assets/images/carverifyimage.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 20,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: items.map((item) => _DashboardCard(item: item)).toList(),
    );
  }
}
class _DashboardCard extends StatelessWidget {
  final _DashboardItem item;

  const _DashboardCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 2,color: AppColors.textFiledBorderColor),
             // boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(item.imagePath),
            ),
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.appColors,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            // Perform action here
          },
          child: Text(item.title),
        ),
      ],
    );
  }
}
class _DashboardItem {
  final String title;
  final String imagePath;

  const _DashboardItem({
    required this.title,
    required this.imagePath,
  });
}
