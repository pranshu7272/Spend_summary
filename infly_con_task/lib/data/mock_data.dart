import '../models/models.dart';
import '../theme/app_theme.dart';

class MockData {
  static const double totalSpend = 84320.50;
  static const double lastMonthSpend = 71240.00;
  static const double percentageChange = 18.37;

  static final List<CategoryModel> categories = [
    CategoryModel(
      name: 'Food',
      emoji: '🍜',
      amount: 18450.00,
      percentage: 21.9,
      color: AppTheme.categoryColors[0],
      transactionCount: 18,
    ),
    CategoryModel(
      name: 'Travel',
      emoji: '✈️',
      amount: 22800.00,
      percentage: 27.0,
      color: AppTheme.categoryColors[1],
      transactionCount: 6,
    ),
    CategoryModel(
      name: 'Shopping',
      emoji: '🛍️',
      amount: 15600.00,
      percentage: 18.5,
      color: AppTheme.categoryColors[2],
      transactionCount: 14,
    ),
    CategoryModel(
      name: 'Health',
      emoji: '💊',
      amount: 7200.00,
      percentage: 8.5,
      color: AppTheme.categoryColors[3],
      transactionCount: 7,
    ),
    CategoryModel(
      name: 'Entertain',
      emoji: '🎬',
      amount: 9870.50,
      percentage: 11.7,
      color: AppTheme.categoryColors[4],
      transactionCount: 5,
    ),
    CategoryModel(
      name: 'Personal',
      emoji: '💆',
      amount: 4800.00,
      percentage: 5.7,
      color: AppTheme.categoryColors[5],
      transactionCount: 4,
    ),
    CategoryModel(
      name: 'Subscriptions',
      emoji: '📱',
      amount: 3600.00,
      percentage: 4.3,
      color: AppTheme.categoryColors[6],
      transactionCount: 3,
    ),
    CategoryModel(
      name: 'Utilities',
      emoji: '⚡',
      amount: 2000.00,
      percentage: 2.4,
      color: AppTheme.categoryColors[7],
      transactionCount: 2,
    ),
  ];

  static final List<TransactionModel> transactions = [
    // Food
    TransactionModel(id: '1', title: 'Swiggy', subtitle: 'Dinner order', amount: 840.00, date: DateTime(2025, 6, 14, 20, 15), category: 'Food', emoji: '🍜'),
    TransactionModel(id: '2', title: 'Zomato', subtitle: 'Lunch delivery', amount: 620.00, date: DateTime(2025, 6, 14, 13, 30), category: 'Food', emoji: '🍔'),
    TransactionModel(id: '3', title: 'Starbucks', subtitle: 'Morning coffee', amount: 480.00, date: DateTime(2025, 6, 13, 9, 10), category: 'Food', emoji: '☕'),
    TransactionModel(id: '4', title: 'Barbeque Nation', subtitle: 'Weekend outing', amount: 2800.00, date: DateTime(2025, 6, 12, 20, 0), category: 'Food', emoji: '🥩'),
    TransactionModel(id: '5', title: 'Big Basket', subtitle: 'Grocery delivery', amount: 3200.00, date: DateTime(2025, 6, 11, 11, 0), category: 'Food', emoji: '🛒'),
    TransactionModel(id: '6', title: 'Dunzo', subtitle: 'Quick groceries', amount: 560.00, date: DateTime(2025, 6, 10, 18, 45), category: 'Food', emoji: '🥦'),
    TransactionModel(id: '7', title: 'McDonald\'s', subtitle: 'Drive-thru order', amount: 340.00, date: DateTime(2025, 6, 9, 14, 0), category: 'Food', emoji: '🍟'),
    TransactionModel(id: '8', title: 'Haldiram\'s', subtitle: 'Snacks & sweets', amount: 780.00, date: DateTime(2025, 6, 8, 16, 20), category: 'Food', emoji: '🍬'),
    TransactionModel(id: '9', title: 'Café Coffee Day', subtitle: 'Meeting over coffee', amount: 520.00, date: DateTime(2025, 6, 7, 10, 30), category: 'Food', emoji: '☕'),
    TransactionModel(id: '10', title: 'Pizza Hut', subtitle: 'Movie night pizza', amount: 960.00, date: DateTime(2025, 6, 6, 21, 0), category: 'Food', emoji: '🍕'),
    TransactionModel(id: '11', title: 'Domino\'s', subtitle: 'Late night order', amount: 740.00, date: DateTime(2025, 6, 5, 23, 15), category: 'Food', emoji: '🍕'),
    TransactionModel(id: '12', title: 'Subway', subtitle: 'Quick lunch', amount: 420.00, date: DateTime(2025, 6, 4, 13, 0), category: 'Food', emoji: '🥪'),
    TransactionModel(id: '13', title: 'Spencer\'s', subtitle: 'Weekly groceries', amount: 2800.00, date: DateTime(2025, 6, 3, 10, 0), category: 'Food', emoji: '🛒'),
    TransactionModel(id: '14', title: 'Chaayos', subtitle: 'Evening chai', amount: 280.00, date: DateTime(2025, 6, 2, 17, 30), category: 'Food', emoji: '🍵'),
    TransactionModel(id: '15', title: 'FreshMenu', subtitle: 'Office lunch', amount: 490.00, date: DateTime(2025, 6, 1, 13, 0), category: 'Food', emoji: '🥗'),
    TransactionModel(id: '16', title: 'KFC', subtitle: 'Snack time', amount: 380.00, date: DateTime(2025, 5, 31, 15, 0), category: 'Food', emoji: '🍗'),
    TransactionModel(id: '17', title: 'Licious', subtitle: 'Meat delivery', amount: 1400.00, date: DateTime(2025, 5, 30, 10, 0), category: 'Food', emoji: '🥩'),
    TransactionModel(id: '18', title: 'Burger King', subtitle: 'Weekend treat', amount: 380.00, date: DateTime(2025, 5, 29, 19, 0), category: 'Food', emoji: '🍔'),

    // Travel
    TransactionModel(id: '19', title: 'IndiGo Airlines', subtitle: 'BLR → DEL return', amount: 8400.00, date: DateTime(2025, 6, 13, 7, 0), category: 'Travel', emoji: '✈️'),
    TransactionModel(id: '20', title: 'Uber', subtitle: 'Airport pickup', amount: 620.00, date: DateTime(2025, 6, 13, 6, 0), category: 'Travel', emoji: '🚗'),
    TransactionModel(id: '21', title: 'Ola', subtitle: 'Office commute', amount: 280.00, date: DateTime(2025, 6, 12, 9, 0), category: 'Travel', emoji: '🚕'),
    TransactionModel(id: '22', title: 'IRCTC', subtitle: 'Mumbai train ticket', amount: 1840.00, date: DateTime(2025, 6, 10, 8, 0), category: 'Travel', emoji: '🚂'),
    TransactionModel(id: '23', title: 'Rapido', subtitle: 'Bike ride', amount: 120.00, date: DateTime(2025, 6, 9, 18, 30), category: 'Travel', emoji: '🛵'),
    TransactionModel(id: '24', title: 'MakeMyTrip', subtitle: 'Goa hotel booking', amount: 11540.00, date: DateTime(2025, 6, 5, 11, 0), category: 'Travel', emoji: '🏨'),

    // Shopping
    TransactionModel(id: '25', title: 'Amazon', subtitle: 'Electronics & accessories', amount: 4200.00, date: DateTime(2025, 6, 14, 14, 30), category: 'Shopping', emoji: '📦'),
    TransactionModel(id: '26', title: 'Myntra', subtitle: 'Summer wardrobe', amount: 3600.00, date: DateTime(2025, 6, 12, 16, 0), category: 'Shopping', emoji: '👗'),
    TransactionModel(id: '27', title: 'Flipkart', subtitle: 'Mobile accessories', amount: 1800.00, date: DateTime(2025, 6, 11, 11, 30), category: 'Shopping', emoji: '🛍️'),
    TransactionModel(id: '28', title: 'Nykaa', subtitle: 'Skincare products', amount: 2400.00, date: DateTime(2025, 6, 9, 14, 0), category: 'Shopping', emoji: '💄'),
    TransactionModel(id: '29', title: 'Meesho', subtitle: 'Casual wear', amount: 800.00, date: DateTime(2025, 6, 8, 12, 0), category: 'Shopping', emoji: '👔'),
    TransactionModel(id: '30', title: 'AJIO', subtitle: 'Sneakers', amount: 1400.00, date: DateTime(2025, 6, 7, 15, 0), category: 'Shopping', emoji: '👟'),
    TransactionModel(id: '31', title: 'Croma', subtitle: 'Smart home device', amount: 3200.00, date: DateTime(2025, 6, 5, 13, 0), category: 'Shopping', emoji: '🏠'),
    TransactionModel(id: '32', title: 'Pepperfry', subtitle: 'Cushions & décor', amount: 1200.00, date: DateTime(2025, 6, 3, 17, 30), category: 'Shopping', emoji: '🛋️'),
    TransactionModel(id: '33', title: 'Bewakoof', subtitle: 'T-shirts combo', amount: 600.00, date: DateTime(2025, 6, 2, 10, 0), category: 'Shopping', emoji: '👕'),
    TransactionModel(id: '34', title: 'Reliance Digital', subtitle: 'Charger & cable', amount: 800.00, date: DateTime(2025, 5, 31, 14, 0), category: 'Shopping', emoji: '🔌'),
    TransactionModel(id: '35', title: 'Decathlon', subtitle: 'Workout gear', amount: 2400.00, date: DateTime(2025, 5, 30, 11, 0), category: 'Shopping', emoji: '🏋️'),
    TransactionModel(id: '36', title: 'eBay India', subtitle: 'Vintage collection', amount: 1400.00, date: DateTime(2025, 5, 29, 9, 0), category: 'Shopping', emoji: '🎁'),
    TransactionModel(id: '37', title: 'Snapdeal', subtitle: 'Kitchen appliances', amount: 1000.00, date: DateTime(2025, 5, 28, 16, 0), category: 'Shopping', emoji: '🍳'),
    TransactionModel(id: '38', title: 'Tata Cliq', subtitle: 'Premium watch', amount: 2400.00, date: DateTime(2025, 5, 27, 13, 0), category: 'Shopping', emoji: '⌚'),

    // Health
    TransactionModel(id: '39', title: 'Apollo Pharmacy', subtitle: 'Monthly medicines', amount: 1840.00, date: DateTime(2025, 6, 13, 10, 0), category: 'Health', emoji: '💊'),
    TransactionModel(id: '40', title: 'Cult.fit', subtitle: 'Gym membership', amount: 1800.00, date: DateTime(2025, 6, 1, 9, 0), category: 'Health', emoji: '💪'),
    TransactionModel(id: '41', title: 'Practo', subtitle: 'Dermat consultation', amount: 600.00, date: DateTime(2025, 6, 10, 11, 0), category: 'Health', emoji: '🩺'),
    TransactionModel(id: '42', title: 'PharmEasy', subtitle: 'Vitamins & supplements', amount: 1200.00, date: DateTime(2025, 6, 7, 14, 0), category: 'Health', emoji: '🧴'),
    TransactionModel(id: '43', title: 'Lybrate', subtitle: 'Nutritionist session', amount: 800.00, date: DateTime(2025, 6, 4, 10, 30), category: 'Health', emoji: '🥗'),
    TransactionModel(id: '44', title: 'HealthifyMe', subtitle: '3-month plan', amount: 600.00, date: DateTime(2025, 6, 1, 8, 0), category: 'Health', emoji: '📊'),
    TransactionModel(id: '45', title: 'Netmeds', subtitle: 'Prescription delivery', amount: 360.00, date: DateTime(2025, 5, 30, 12, 0), category: 'Health', emoji: '💉'),

    // Entertainment
    TransactionModel(id: '46', title: 'BookMyShow', subtitle: 'Avengers premiere', amount: 1200.00, date: DateTime(2025, 6, 13, 19, 0), category: 'Entertain', emoji: '🎬'),
    TransactionModel(id: '47', title: 'Steam', subtitle: 'Cyberpunk 2077 DLC', amount: 1499.00, date: DateTime(2025, 6, 10, 16, 0), category: 'Entertain', emoji: '🎮'),
    TransactionModel(id: '48', title: 'PVR Cinemas', subtitle: 'Family movie night', amount: 2400.00, date: DateTime(2025, 6, 7, 18, 30), category: 'Entertain', emoji: '🎥'),
    TransactionModel(id: '49', title: 'JioCinema', subtitle: 'IPL season pass', amount: 999.00, date: DateTime(2025, 6, 5, 10, 0), category: 'Entertain', emoji: '🏏'),
    TransactionModel(id: '50', title: 'Spotify', subtitle: 'Premium plan', amount: 119.00, date: DateTime(2025, 6, 1, 0, 0), category: 'Entertain', emoji: '🎵'),

    // Personal
    TransactionModel(id: '51', title: 'Enrich Salon', subtitle: 'Haircut & styling', amount: 1200.00, date: DateTime(2025, 6, 11, 12, 0), category: 'Personal', emoji: '✂️'),
    TransactionModel(id: '52', title: 'Forest Essentials', subtitle: 'Body care luxury', amount: 2400.00, date: DateTime(2025, 6, 8, 15, 0), category: 'Personal', emoji: '🌿'),
    TransactionModel(id: '53', title: 'Urban Company', subtitle: 'Home cleaning', amount: 600.00, date: DateTime(2025, 6, 3, 10, 0), category: 'Personal', emoji: '🧹'),
    TransactionModel(id: '54', title: 'DrDrew Spa', subtitle: 'Relaxation session', amount: 600.00, date: DateTime(2025, 5, 30, 14, 0), category: 'Personal', emoji: '💆'),

    // Subscriptions
    TransactionModel(id: '55', title: 'Netflix', subtitle: 'Premium 4K plan', amount: 649.00, date: DateTime(2025, 6, 1, 0, 0), category: 'Subscriptions', emoji: '📺'),
    TransactionModel(id: '56', title: 'Amazon Prime', subtitle: 'Annual subscription', amount: 1499.00, date: DateTime(2025, 6, 1, 0, 0), category: 'Subscriptions', emoji: '📦'),
    TransactionModel(id: '57', title: 'Adobe CC', subtitle: 'Creative Cloud', amount: 1452.00, date: DateTime(2025, 6, 1, 0, 0), category: 'Subscriptions', emoji: '🎨'),
  ];

  static List<double> get weeklySpend => [12400, 18600, 22800, 15200, 19800, 24600, 16200];
  static List<String> get weekDays => ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
}
