import 'package:wallet_app/data/data.dart';

List<CategoryModel> defaultIncomeCategories = [
  income,
  savingsCategory,
  replenishment
];
List<CategoryModel> defaultExpenseCategories = [food, car];

CategoryModel income = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch,
  name: 'Ingreso',
  image: 'assets/icons/categories/income.png',
  isIncome: true,
  color: green,
  iconColor: black,
  subCategories: [salary],
);

CategoryModel salary = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 1,
  name: 'Sueldo',
  image: 'assets/icons/categories/salary.png',
  isIncome: true,
  color: green,
  iconColor: black,
  subCategories: [],
);

CategoryModel replenishment = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 2,
  name: 'Reintegro',
  image: 'assets/icons/categories/replenishment.png',
  isIncome: true,
  subCategories: [afip],
  color: green,
  iconColor: black,
);

CategoryModel afip = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 3,
  name: 'AFIP',
  image: 'assets/icons/categories/afip.png',
  isIncome: true,
  color: white,
  iconColor: mercadoPagoColor,
  subCategories: [],
);

CategoryModel savingsCategory = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 4,
  name: 'Ahorros',
  image: 'assets/icons/categories/savings.png',
  isIncome: true,
  color: green,
  iconColor: black,
  subCategories: [],
);

CategoryModel food = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 5,
  name: 'Comida',
  image: 'assets/icons/categories/food.png',
  isIncome: false,
  color: red,
  subCategories: [market, mcDonalds],
  iconColor: white,
);

CategoryModel market = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 6,
  name: 'Mercado',
  image: 'assets/icons/categories/groceries.png',
  isIncome: false,
  color: red,
  iconColor: white,
  subCategories: [],
);

CategoryModel mcDonalds = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 7,
  name: 'McDonalds',
  image: 'assets/icons/categories/mcdonalds.png',
  isIncome: false,
  color: red,
  iconColor: yellow,
  subCategories: [],
);

CategoryModel car = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 8,
  name: 'Auto',
  image: 'assets/icons/categories/car.png',
  isIncome: false,
  color: black,
  iconColor: white,
  subCategories: [],
);
