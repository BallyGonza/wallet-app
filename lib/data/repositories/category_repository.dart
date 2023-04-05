import 'package:wallet_app/data/data.dart';

List<CategoryModel> defaultIncomeCategories = [salary];
List<CategoryModel> defaultExpenseCategories = [food];

CategoryModel salary = CategoryModel(
  id: 0,
  name: 'Sueldo',
  image: 'assets/icons/categories/salary.png',
  isIncome: true,
  color: green,
  iconColor: black,
);

CategoryModel food = CategoryModel(
  id: 1,
  name: 'Comida',
  image: 'assets/icons/categories/food.png',
  isIncome: false,
  color: red,
  subCategories: [market],
  iconColor: white,
);

CategoryModel market = CategoryModel(
  id: 2,
  name: 'Mercado',
  image: 'assets/icons/categories/groceries.png',
  isIncome: false,
  color: red,
  iconColor: white,
);
