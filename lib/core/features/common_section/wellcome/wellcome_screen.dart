import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';

class AnimatedSplashScreen extends StatefulWidget {
  @override
  _AnimatedSplashScreenState createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<Offset> _moveUpAnimation;
  late Animation<double> _containerSizeAnimation;  // For the new container animation
  bool _isLogoVisible = true;  // Control visibility of the initial logo

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    )..forward();

    // Scaling down the logo animation
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.5).animate(
      CurvedAnimation(parent: _controller, curve: Interval(0.0, 0.2, curve: Curves.easeInOut)),
    );

    // Container color transition (blue background)
    _colorAnimation = ColorTween(begin: Colors.transparent, end: Colors.blue).animate(
      CurvedAnimation(parent: _controller, curve: Interval(0.4, 0.6, curve: Curves.easeInOut)),
    );

    // Logo size transition to a smaller circular container
    _sizeAnimation = Tween<double>(begin: 200, end: 150).animate(
      CurvedAnimation(parent: _controller, curve: Interval(0.4, 0.6, curve: Curves.easeInOut)),
    );

    // Upward movement of the container
    _moveUpAnimation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -0.3)).animate(
      CurvedAnimation(parent: _controller, curve: Interval(0.6, 0.8, curve: Curves.easeInOut)),
    );

    // New animation for the blue container appearing at the center of the screen
    _containerSizeAnimation = Tween<double>(begin: 0, end: 200).animate(
      CurvedAnimation(parent: _controller, curve: Interval(0.0, 0.25, curve: Curves.easeInOut)),
    );

    // Set logo visibility to false after the initial 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLogoVisible = false;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Step 1: Initial logo and text (first screen)
            _isLogoVisible
                ? AnimatedOpacity(
              opacity: 1.0,
              duration: Duration(seconds: 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImage(imageSrc: AppImages.carverifyimage), // Custom image for logo
                  SizedBox(height: 20),
                  Text(
                    'CarVerify',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            )
                : SizedBox(),

            // Step 2: Animated logo transition to circular container
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: _sizeAnimation.value,
                    height: _sizeAnimation.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _colorAnimation.value,
                    ),
                    child: Center(
                      child: CustomImage(imageSrc: AppImages.carverifyimage), // Custom image inside container
                    ),
                  ),
                );
              },
            ),

            // Step 3: Upward movement of the circular container
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Positioned(
                  top: _moveUpAnimation.value.dy * 200,
                  child: AnimatedOpacity(
                    opacity: 1.0,
                    duration: Duration(seconds: 1),
                    child: CustomImage(imageSrc: AppImages.carverifyimage), // Custom image moved upward
                  ),
                );
              },
            ),

            // Step 4: Blue container animation appearing at the center of the screen
            Positioned(
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                width: _containerSizeAnimation.value,
                height: _containerSizeAnimation.value,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10), // Optional rounded corners
                ),
                child: Center(
                  child: CustomImage(imageSrc: AppImages.carverifyimage), // Custom image inside new container
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
