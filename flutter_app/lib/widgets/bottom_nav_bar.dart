import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class CareBottomNavBar extends StatelessWidget {
  final VoidCallback? onFullPlan;
  final VoidCallback? onSettings;

  const CareBottomNavBar({
    super.key,
    this.onFullPlan,
    this.onSettings,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(
          top: BorderSide(color: AppColors.border, width: 4),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 30,
            offset: Offset(0, -4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 64,
                child: ElevatedButton.icon(
                  onPressed: onFullPlan,
                  icon: const Icon(Icons.calendar_today, size: 24),
                  label: const Text(
                    'Full Plan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.heading,
                    foregroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    elevation: 4,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 64,
                child: OutlinedButton.icon(
                  onPressed: onSettings,
                  icon: const Icon(Icons.settings, size: 24),
                  label: const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.primaryAction,
                    backgroundColor: AppColors.blueLight,
                    side: const BorderSide(color: AppColors.blueLight, width: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
