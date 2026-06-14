# 💸 SpendSummary — Flutter Spend Tracking UI

A beautifully designed **Spend Summary** screen built with Flutter for a recruitment assignment. Showcases advanced UI patterns, smooth animations, and production-quality code structure.

---

## 🎨 Design Choices

**Palette:** Deep Midnight (`#0A0A14`) × Electric Violet (`#7C3AED`) × Amber Glow (`#F59E0B`)  
**Typography:** [Inter](https://fonts.google.com/specimen/Inter) via `google_fonts` — clean, modern, highly legible  
**Signature element:** Frosted-glass header card with embedded mini bar chart + glowing violet shadow, making the spend number feel like a financial dashboard readout

---

## ✨ Features

### Header Card
- Total monthly spend (₹84,320.50) with INR formatting
- % change vs last month with direction indicator (↑ 18.37%)
- Inline mini bar chart (weekly spend — built with `fl_chart`)
- Budget progress bar with animated fill
- Glow shadow + gradient background with floating orb decorations

### Category Scroll
- 8 categories: Food, Travel, Shopping, Health, Entertainment, Personal, Subscriptions, Utilities
- Horizontal scroll with tap-to-select state (color fill highlight)
- Compact formatted amounts (`₹18.5K`) with emoji icons
- Staggered entrance animation

### Spend Breakdown
- Interactive donut/pie chart (tap to reveal category %)
- Legend with color-coded entries
- Built with `fl_chart`

### Transactions List
- **57 real mock items** across all categories
- Grouped by date with sticky-style date headers (Today / Yesterday / Mon, 12 Jun)
- Per-item: emoji avatar, category badge, timestamp, amount
- Ink ripple on tap, category-color coded avatars

### FAB (Floating Action Button)
- Violet gradient + glow shadow
- Elastic scale-in entrance animation
- Opens "Add Expense" bottom sheet with category picker, amount & title fields

---

## 🏗️ Project Structure

```
lib/
├── main.dart                    # App entry, theme setup
├── theme/
│   └── app_theme.dart           # All colors, typography, ThemeData
├── models/
│   └── models.dart              # TransactionModel, CategoryModel
├── data/
│   └── mock_data.dart           # 57 mock transactions + categories
├── screens/
│   └── spend_summary_screen.dart # Main screen with SliverAppBar + all sections
└── widgets/
    ├── spend_header_card.dart    # Monthly total + chart card
    ├── category_scroll.dart      # Horizontal category chips
    ├── spend_donut_chart.dart    # Interactive pie chart
    └── transaction_list_item.dart # Individual transaction row
```

---

## 🤖 AI Tools Used

This project was built using **Claude (claude.ai / Anthropic)** — Anthropic's AI assistant.

**How it was used:**
- Generated the complete Flutter project scaffold and file structure
- Designed the full color palette, typography, and component hierarchy
- Wrote all Dart/Flutter widget code including animations, custom painters, and layout
- Authored 57 realistic mock transactions with appropriate categorization
- Iterated on design decisions (dark theme palette, card shadows, chart integration)

**Developer contribution:**
- Reviewed and validated all generated code against Flutter best practices
- Verified structure, naming conventions, and widget composition patterns
- Ensured the final design met the brief's requirements

> *AI tools dramatically accelerate implementation, but the developer's judgment — around architecture, UX tradeoffs, and code quality — is what makes the result production-worthy.*

---

## 📦 Dependencies

| Package | Version | Use |
|---|---|---|
| `google_fonts` | ^6.1.0 | Inter typeface |
| `fl_chart` | ^0.68.0 | Bar chart + donut chart |
| `intl` | ^0.19.0 | INR currency formatting |
| `shimmer` | ^3.0.0 | Loading states (available) |

---

## 🚀 Getting Started

```bash
# Clone the repo
git clone https://github.com/pranshu-mishra/spend-summary-flutter.git
cd spend-summary-flutter

# Install dependencies
flutter pub get

# Run on emulator or device
flutter run

# Build APK
flutter build apk --release
```

**Requires:** Flutter 3.10+ · Dart 3.0+ · Android/iOS emulator

---

## 📱 Screenshots

> *(Add emulator screenshots here after running the app)*

| Screen | Description |
|---|---|
| `screenshot_1.png` | Full spend summary home screen |
| `screenshot_2.png` | Category selection active state |
| `screenshot_3.png` | Transaction list with date groups |
| `screenshot_4.png` | Add Expense bottom sheet |

---

## 👨‍💻 Author

**Pranshu Mishra** — 3 years Flutter experience  
Built for recruitment assignment · June 2025
