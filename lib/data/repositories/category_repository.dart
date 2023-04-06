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
  subCategories: [market, fastFood],
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

CategoryModel fastFood = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 7,
  name: 'Fast Food',
  image: 'assets/icons/categories/fastfood.png',
  isIncome: false,
  color: red,
  iconColor: white,
  subCategories: [mcDonalds, burgerKing, subway, kfc],
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

CategoryModel burgerKing = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 8,
  name: 'Burger King',
  image: 'assets/icons/categories/burgerking.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel subway = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 9,
  name: 'Subway',
  image: 'assets/icons/categories/subway.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel kfc = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 10,
  name: 'KFC',
  image: 'assets/icons/categories/kfc.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel car = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 11,
  name: 'Auto',
  image: 'assets/icons/categories/car.png',
  isIncome: false,
  color: black,
  iconColor: white,
  subCategories: [fuel],
);

CategoryModel fuel = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 12,
  name: 'Combustible',
  image: 'assets/icons/categories/fuel.png',
  isIncome: false,
  color: black,
  iconColor: white,
  subCategories: [ypf, shell],
);

CategoryModel ypf = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 12,
  name: 'YPF',
  image: 'assets/icons/categories/ypf.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [],
);

CategoryModel shell = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 13,
  name: 'Shell',
  image: 'assets/icons/categories/shell.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

//TODO: Agregar Salud -> Dentista / Farmacia

CategoryModel health = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 14,
  name: 'Salud',
  image: 'assets/icons/categories/health.png',
  isIncome: false,
  color: white,
  iconColor: red,
  subCategories: [dentist, pharmacy],
);

CategoryModel dentist = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 15,
  name: 'Dentista',
  image: 'assets/icons/categories/dentist.png',
  isIncome: false,
  color: white,
  iconColor: blue,
  subCategories: [],
);

CategoryModel pharmacy = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 16,
  name: 'Farmacia',
  image: 'assets/icons/categories/pharmacy.png',
  isIncome: false,
  color: white,
  iconColor: green,
  subCategories: [],
);

//TODO: Agregar Salidas -> Cine

CategoryModel entertainment = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 17,
  name: 'Entretenimiento',
  image: 'assets/icons/categories/entertainment.png',
  isIncome: false,
  color: yellow,
  iconColor: black,
  subCategories: [cinema],
);

CategoryModel cinema = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 18,
  name: 'Cine',
  image: 'assets/icons/categories/cinema.png',
  isIncome: false,
  color: yellow,
  iconColor: black,
  subCategories: [hoyts, showcase],
);

CategoryModel hoyts = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 40,
  name: 'Hoyts',
  image: 'assets/icons/categories/hoyts.png',
  isIncome: false,
  color: yellow,
  iconColor: black,
  subCategories: [],
);

CategoryModel showcase = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 50,
  name: 'Showcase',
  image: 'assets/icons/categories/showcase.png',
  isIncome: false,
  color: yellow,
  iconColor: black,
  subCategories: [],
);

//TODO: Agregar Casa

CategoryModel home = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 19,
  name: 'Casa',
  image: 'assets/icons/categories/home.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [],
);

//TODO: Agregar Servicios -> Movistar / Personal

CategoryModel services = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 20,
  name: 'Servicios',
  image: 'assets/icons/categories/services.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [movistar, personal],
);

CategoryModel movistar = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 21,
  name: 'Movistar',
  image: 'assets/icons/categories/movistar.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [],
);

CategoryModel personal = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 22,
  name: 'Personal',
  image: 'assets/icons/categories/personal.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [],
);

//TODO: Agregar Tarjeta de Credito -> VISA / Mastercard

CategoryModel creditCard = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 23,
  name: 'Tarjeta de Credito',
  image: 'assets/icons/categories/creditcard.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [visa, mastercard],
);

CategoryModel visa = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 24,
  name: 'VISA',
  image: 'assets/icons/categories/visa.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [],
);

CategoryModel mastercard = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 25,
  name: 'Mastercard',
  image: 'assets/icons/categories/mastercard.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [],
);

//TODO: Agregar Ahorros

CategoryModel savings = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 26,
  name: 'Ahorros',
  image: 'assets/icons/categories/savings.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [],
);

//TODO: Agregar Regalos

CategoryModel gifts = CategoryModel(
  id: DateTime.now().millisecondsSinceEpoch + 27,
  name: 'Regalos',
  image: 'assets/icons/categories/gift.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [],
);
