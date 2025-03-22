import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderCard(),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: const [
                Expanded(
                    child: ActionCard(
                  image: 'assets/images/carverifyimage_1.png',
                  title: 'View report',
                )),
                SizedBox(width: 16),
                Expanded(
                    child: ActionCard(
                  image: 'assets/images/carverifyimage_1.png',
                  title: 'Manage car',
                )),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: const [
                Expanded(
                    child: ActionCard(
                  image: 'assets/images/carverifyimage.png',
                  title: 'Manage Fleet',
                )),
                SizedBox(width: 16),
                Expanded(
                    child: ActionCard(
                  image: 'assets/images/carverifyimage.png',
                  title: 'Manage Employee',
                )),
              ],
            ),
          ),
          // You can add a ListView or similar widget below for activity
        ],
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
                backgroundImage:
                    AssetImage('assets/images/carverifyimage_1.png'),
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

class ActionCard extends StatelessWidget {
  final String image;
  final String title;

  const ActionCard({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shadowColor: AppColors.textFiledBorderColor,
      surfaceTintColor: AppColors.textFiledBorderColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),

          )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(image, height: 100),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.appColors,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(12),
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
