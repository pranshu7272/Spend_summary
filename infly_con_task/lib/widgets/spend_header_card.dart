import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';
import '../theme/app_theme.dart';
import '../data/mock_data.dart';

class SpendHeaderCard extends StatefulWidget {
  const SpendHeaderCard({super.key});

  @override
  State<SpendHeaderCard> createState() => _SpendHeaderCardState();
}

class _SpendHeaderCardState extends State<SpendHeaderCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _slideAnimation = Tween<double>(begin: 30, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 0);
    final isPositive = MockData.percentageChange > 0;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _fadeAnimation.value,
          child: Transform.translate(
            offset: Offset(0, _slideAnimation.value),
            child: child,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF2D1B69),
              Color(0xFF1A0E45),
              Color(0xFF0F0A2E),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: AppTheme.primary.withOpacity(0.35),
              blurRadius: 30,
              offset: const Offset(0, 12),
              spreadRadius: -4,
            ),
          ],
          border: Border.all(
            color: AppTheme.primary.withOpacity(0.25),
            width: 1.2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Stack(
            children: [
              // Background glow orbs
              Positioned(
                top: -40,
                right: -20,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.primary.withOpacity(0.12),
                  ),
                ),
              ),
              Positioned(
                bottom: -30,
                left: 20,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.accent.withOpacity(0.08),
                  ),
                ),
              ),
              // Content
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Spent',
                              style: GoogleFonts.inter(
                                color: AppTheme.textSecondary,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'June 2025',
                              style: GoogleFonts.inter(
                                color: AppTheme.textMuted,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        _buildBadge(isPositive),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '₹',
                          style: GoogleFonts.inter(
                            color: AppTheme.textSecondary,
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '84,320',
                          style: GoogleFonts.inter(
                            color: AppTheme.textPrimary,
                            fontSize: 42,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -1.5,
                            height: 1.1,
                          ),
                        ),
                        Text(
                          '.50',
                          style: GoogleFonts.inter(
                            color: AppTheme.textSecondary,
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          isPositive ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded,
                          color: isPositive ? AppTheme.negative : AppTheme.positive,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${MockData.percentageChange.toStringAsFixed(1)}% vs last month',
                          style: GoogleFonts.inter(
                            color: isPositive ? AppTheme.negative : AppTheme.positive,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '(${formatter.format(MockData.lastMonthSpend)})',
                          style: GoogleFonts.inter(
                            color: AppTheme.textMuted,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    // Mini bar chart
                    SizedBox(
                      height: 68,
                      child: _buildWeeklyChart(),
                    ),
                    const SizedBox(height: 16),
                    // Days labels
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: MockData.weekDays
                          .map((d) => Text(
                                d,
                                style: GoogleFonts.inter(
                                  color: AppTheme.textMuted,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 16),
                    Divider(color: AppTheme.border, height: 1),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        _buildStatChip('Budget', '₹1,00,000', AppTheme.textSecondary),
                        const SizedBox(width: 12),
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.843,
                            backgroundColor: AppTheme.border,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppTheme.accent,
                            ),
                            minHeight: 4,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          '84.3%',
                          style: GoogleFonts.inter(
                            color: AppTheme.accent,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBadge(bool isPositive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: (isPositive ? AppTheme.negative : AppTheme.positive).withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: (isPositive ? AppTheme.negative : AppTheme.positive).withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            isPositive ? Icons.trending_up_rounded : Icons.trending_down_rounded,
            color: isPositive ? AppTheme.negative : AppTheme.positive,
            size: 14,
          ),
          const SizedBox(width: 4),
          Text(
            'This Month',
            style: GoogleFonts.inter(
              color: isPositive ? AppTheme.negative : AppTheme.positive,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatChip(String label, String value, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            color: AppTheme.textMuted,
            fontSize: 10,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.inter(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildWeeklyChart() {
    final maxVal = MockData.weeklySpend.reduce((a, b) => a > b ? a : b);

    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceBetween,
        maxY: maxVal * 1.3,
        barTouchData: BarTouchData(enabled: false),
        titlesData: const FlTitlesData(show: false),
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        barGroups: MockData.weeklySpend.asMap().entries.map((e) {
          final isToday = e.key == 5; // Saturday is "today"
          return BarChartGroupData(
            x: e.key,
            barRods: [
              BarChartRodData(
                toY: e.value,
                color: isToday ? AppTheme.accent : AppTheme.primary.withOpacity(0.5),
                width: 28,
                borderRadius: BorderRadius.circular(6),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: maxVal * 1.3,
                  color: Colors.white.withOpacity(0.04),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
