import 'package:flutter/material.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme.dart';

class BoardColumnHeader extends StatelessWidget {
  static const double _headerContentWidth = 248;

  const BoardColumnHeader({
    super.key,
    required this.title,
    required this.taskCount,
  });

  final String title;
  final int taskCount;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: _headerContentWidth),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                title,
                style: context.typography.titleMediumHeavy,
                softWrap: true,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.black300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Text(
                  '$taskCount',
                  style: context.typography.bodyRegular.copyWith(
                    color: AppColors.black400,
                    fontWeight: FontWeight.w600,
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
