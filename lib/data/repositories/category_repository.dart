import 'package:wallet_app/data/data.dart';

List<CategoryModel> defaultIncomeCategories = [
  income,
  savingsCategory,
  replenishment
];
List<CategoryModel> defaultExpenseCategories = [
  food,
  car,
  entertainment,
  health,
  home,
  services,
  creditCard,
  gifts,
  savings,
  others,
];

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
  id: 1,
  name: 'Sueldo',
  image: 'assets/icons/categories/salary.png',
  isIncome: true,
  color: green,
  iconColor: black,
  subCategories: [],
);

CategoryModel replenishment = CategoryModel(
  id: 2,
  name: 'Reintegro',
  image: 'assets/icons/categories/replenishment.png',
  isIncome: true,
  subCategories: [afip],
  color: green,
  iconColor: black,
);

CategoryModel afip = CategoryModel(
  id: 3,
  name: 'AFIP',
  image: 'assets/icons/categories/afip.png',
  isIncome: true,
  color: white,
  iconColor: mercadoPagoColor,
  subCategories: [],
);

CategoryModel savingsCategory = CategoryModel(
  id: 4,
  name: 'Ahorros',
  image: 'assets/icons/categories/savings.png',
  isIncome: true,
  color: green,
  iconColor: black,
  subCategories: [],
);

CategoryModel food = CategoryModel(
  id: 5,
  name: 'Comida',
  image: 'assets/icons/categories/food.png',
  isIncome: false,
  color: red,
  subCategories: [market, fastFood, mcDonalds, burgerKing, subway, kfc],
  iconColor: white,
);

CategoryModel market = CategoryModel(
  id: 6,
  name: 'Mercado',
  image: 'assets/icons/categories/groceries.png',
  isIncome: false,
  color: red,
  iconColor: white,
  subCategories: [],
);

CategoryModel fastFood = CategoryModel(
  id: 7,
  name: 'Fast Food',
  image: 'assets/icons/categories/fastfood.png',
  isIncome: false,
  color: red,
  iconColor: white,
  subCategories: [],
);

CategoryModel mcDonalds = CategoryModel(
  id: 7,
  name: 'McDonalds',
  image: 'assets/icons/categories/mcdonalds.png',
  isIncome: false,
  color: red,
  iconColor: yellow,
  subCategories: [],
);

CategoryModel burgerKing = CategoryModel(
  id: 8,
  name: 'Burger King',
  image: 'assets/icons/categories/burgerking.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel subway = CategoryModel(
  id: 9,
  name: 'Subway',
  image: 'assets/icons/categories/subway.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel kfc = CategoryModel(
  id: 10,
  name: 'KFC',
  image: 'assets/icons/categories/kfc.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel car = CategoryModel(
  id: 11,
  name: 'Auto',
  image: 'assets/icons/categories/car.png',
  isIncome: false,
  color: black,
  iconColor: white,
  subCategories: [fuel, ypf, shell],
);

CategoryModel fuel = CategoryModel(
  id: 12,
  name: 'Combustible',
  image: 'assets/icons/categories/fuel.png',
  isIncome: false,
  color: black,
  iconColor: white,
  subCategories: [],
);

CategoryModel ypf = CategoryModel(
  id: 12,
  name: 'YPF',
  image: 'assets/icons/categories/ypf.png',
  isIncome: false,
  color: blue,
  iconColor: white,
  subCategories: [],
);

CategoryModel shell = CategoryModel(
  id: 13,
  name: 'Shell',
  image: 'assets/icons/categories/shell.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel health = CategoryModel(
  id: 14,
  name: 'Salud',
  image: 'assets/icons/categories/health.png',
  isIncome: false,
  color: white,
  iconColor: red,
  subCategories: [dentist, pharmacy, haircut],
);

CategoryModel dentist = CategoryModel(
  id: 15,
  name: 'Dentista',
  image: 'assets/icons/categories/dentist.png',
  isIncome: false,
  color: white,
  iconColor: blue,
  subCategories: [],
);

CategoryModel pharmacy = CategoryModel(
  id: 16,
  name: 'Farmacia',
  image: 'assets/icons/categories/pharmacy.png',
  isIncome: false,
  color: white,
  iconColor: green,
  subCategories: [],
);

CategoryModel entertainment = CategoryModel(
  id: 17,
  name: 'Entretenimiento',
  image: 'assets/icons/categories/entertainment.png',
  isIncome: false,
  color: purple,
  iconColor: white,
  subCategories: [cinema],
);

CategoryModel cinema = CategoryModel(
  id: 18,
  name: 'Cine',
  image: 'assets/icons/categories/cinema.png',
  isIncome: false,
  color: white,
  iconColor: black,
  subCategories: [],
);

CategoryModel home = CategoryModel(
  id: 19,
  name: 'Casa',
  image: 'assets/icons/categories/home.png',
  isIncome: false,
  color: orange,
  iconColor: black,
  subCategories: [],
);

CategoryModel services = CategoryModel(
  id: 20,
  name: 'Servicios',
  image: 'assets/icons/categories/services.png',
  isIncome: false,
  color: white,
  iconColor: black,
  subCategories: [movistar, personal, netflix],
);

CategoryModel movistar = CategoryModel(
  id: 21,
  name: 'Movistar',
  image: 'assets/icons/categories/movistar.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel personal = CategoryModel(
  id: 22,
  name: 'Personal',
  image: 'assets/icons/categories/personal.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel creditCard = CategoryModel(
  id: 23,
  name: 'Tarjeta de Credito',
  image: 'assets/icons/categories/creditcard.png',
  isIncome: false,
  color: violet,
  iconColor: white,
  subCategories: [visa, mastercard],
);

CategoryModel visa = CategoryModel(
  id: 24,
  name: 'VISA',
  image: 'assets/icons/categories/visa.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel mastercard = CategoryModel(
  id: 25,
  name: 'Mastercard',
  image: 'assets/icons/categories/mastercard.png',
  isIncome: false,
  color: white,
  subCategories: [],
);

CategoryModel savings = CategoryModel(
  id: 26,
  name: 'Ahorros',
  image: 'assets/icons/categories/savings.png',
  isIncome: false,
  color: lightGreen,
  iconColor: black,
  subCategories: [],
);

CategoryModel gifts = CategoryModel(
  id: 27,
  name: 'Regalos',
  image: 'assets/icons/categories/gift.png',
  isIncome: false,
  color: lightYellow,
  iconColor: black,
  subCategories: [],
);

CategoryModel netflix = CategoryModel(
  id: 28,
  name: 'Netflix',
  image: 'assets/icons/categories/netflix.png',
  isIncome: false,
  color: black,
  subCategories: [],
);

CategoryModel haircut = CategoryModel(
  id: 29,
  name: 'Peluqueria',
  image: 'assets/icons/categories/peluqueria.png',
  isIncome: false,
  color: white,
  iconColor: green,
  subCategories: [],
);

CategoryModel others = CategoryModel(
  id: 30,
  name: 'Otros',
  image: 'assets/icons/categories/others.png',
  isIncome: false,
  color: grey,
  iconColor: white,
  subCategories: [],
);
