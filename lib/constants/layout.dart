// 布局常量

import 'package:flutter/material.dart';

const double kSmallPadding = 8.0;
const double kStandardPadding = 16.0;
const double kLargePadding = 24.0;

// 屏幕断点
const double kMobileBreakpoint = 600.0;
const double kTabletBreakpoint = 900.0;
const double kDesktopBreakpoint = 1200.0;

// 内容宽度限制
const double kMinContentWidth = 320.0;
const double kMediumContentWidth = 720.0; // 替换原来的 kMinMediumScreenWidth
const double kMaxContentWidth = 1440.0;
const double kMinCardWidth = 160.0;

// 组件尺寸
const double kAppBarHeight = 56.0;
const double kExpandedAppBarHeight = 240.0;
const double kSideBarWidth = 80.0;
const double kExpandedSideBarWidth = 180.0;
const double kMaxSegmentedButtonWidth = 300.0; // 新增：SegmentedButton最大宽度

// 网格布局配置
const int kMinColumns = 2;
const int kMaxColumns = 6;
const double kGridAspectRatio = 0.7;

enum LayoutType { mobile, tablet, desktop, wideDesktop }

enum CheckLayoutType { atMost, atLeast }

bool checkLayout(
  double width,
  LayoutType type, {
  required CheckLayoutType check,
}) {
  switch (check) {
    case CheckLayoutType.atMost:
      return switch (type) {
        LayoutType.mobile => width < kMobileBreakpoint,
        LayoutType.tablet => width < kTabletBreakpoint,
        LayoutType.desktop => width < kDesktopBreakpoint,
        LayoutType.wideDesktop => width < double.infinity,
      };
    case CheckLayoutType.atLeast:
      return switch (type) {
        LayoutType.mobile => width >= kMobileBreakpoint,
        LayoutType.tablet => width >= kMobileBreakpoint,
        LayoutType.desktop => width >= kTabletBreakpoint,
        LayoutType.wideDesktop => width >= kDesktopBreakpoint,
      };
  }
}

// 网格列数计算
int getGridColumns(double width) {
  if (width <= kMobileBreakpoint) return kMinColumns;

  final columns = (width / kMinCardWidth).floor();
  return columns.clamp(kMinColumns, kMaxColumns);
}

// 内容宽度计算
double getContentWidth(double width) {
  if (width <= kMobileBreakpoint) return width;
  if (width <= kTabletBreakpoint) return kTabletBreakpoint * 0.9;
  return (width * 0.9).clamp(kMinContentWidth, kMaxContentWidth);
}

// Padding计算
EdgeInsets getScreenPadding(double width) {
  if (width <= kMobileBreakpoint) {
    return const EdgeInsets.all(kSmallPadding);
  }
  if (width <= kTabletBreakpoint) {
    return const EdgeInsets.all(kStandardPadding);
  }
  return const EdgeInsets.all(kLargePadding);
}
