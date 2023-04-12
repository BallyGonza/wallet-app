import 'package:wallet_app/data/data.dart';

List<CategoryModel> defaultIncomeCategories = [
  income,
  savingsCategory,
  replenishment
];
List<CategoryModel> defaultExpenseCategories = [
  others,
  food,
  car,
  hangouts,
  health,
  shopping,
  services,
  education,
  savings,
  creditCard,
];

CategoryModel income = CategoryModel(
  id: 0,
  name: 'Ingreso',
  icon: 'assets/icons/categories/income.png',
  isIncome: true,
  backgroundColor: green,
  iconColor: black,
  subCategories: [salary, honorarios, cashGift, sell],
);

CategoryModel salary = CategoryModel(
  id: 1,
  name: 'Sueldo',
  icon: 'assets/icons/categories/salary.png',
  isIncome: true,
  backgroundColor: green,
  iconColor: black,
  subCategories: [],
);

CategoryModel replenishment = CategoryModel(
  id: 2,
  name: 'Reintegro',
  icon: 'assets/icons/categories/replenishment.png',
  isIncome: true,
  subCategories: [afip],
  backgroundColor: green,
  iconColor: black,
);

CategoryModel afip = CategoryModel(
  id: 3,
  name: 'AFIP',
  icon: 'assets/icons/categories/afip.png',
  isIncome: true,
  backgroundColor: white,
  iconColor: mercadoPagoColor,
  subCategories: [],
);

CategoryModel savingsCategory = CategoryModel(
  id: 4,
  name: 'Ahorros',
  icon: 'assets/icons/categories/savings.png',
  isIncome: true,
  backgroundColor: green,
  iconColor: black,
  subCategories: [],
);

CategoryModel food = CategoryModel(
  id: 5,
  name: 'Comida',
  icon: 'assets/icons/categories/food.png',
  isIncome: false,
  backgroundColor: red,
  subCategories: [market, delivery, mcDonalds, burgerKing, subway, kfc],
  iconColor: white,
);

CategoryModel market = CategoryModel(
  id: 6,
  name: 'Mercado',
  icon: 'assets/icons/categories/groceries.png',
  isIncome: false,
  backgroundColor: red,
  iconColor: white,
  subCategories: [],
);

CategoryModel delivery = CategoryModel(
  id: 7,
  name: 'Delivery',
  icon: 'assets/icons/categories/delivery.png',
  isIncome: false,
  backgroundColor: red,
  iconColor: white,
  subCategories: [],
);

CategoryModel mcDonalds = CategoryModel(
  id: 199,
  name: 'McDonalds',
  icon: 'assets/icons/categories/mcdonalds.png',
  isIncome: false,
  backgroundColor: red,
  iconColor: yellow,
  subCategories: [],
);

CategoryModel burgerKing = CategoryModel(
  id: 8,
  name: 'Burger King',
  icon: 'assets/icons/categories/burgerking.png',
  isIncome: false,
  backgroundColor: white,
  subCategories: [],
);

CategoryModel subway = CategoryModel(
  id: 9,
  name: 'Subway',
  icon: 'assets/icons/categories/subway.png',
  isIncome: false,
  backgroundColor: white,
  subCategories: [],
);

CategoryModel kfc = CategoryModel(
  id: 10,
  name: 'KFC',
  icon: 'assets/icons/categories/kfc.png',
  isIncome: false,
  backgroundColor: white,
  subCategories: [],
);

CategoryModel car = CategoryModel(
  id: 11,
  name: 'Auto',
  icon: 'assets/icons/categories/car.png',
  isIncome: false,
  backgroundColor: black,
  iconColor: white,
  subCategories: [fuel, toll, parking, service, secure, ypf, shell, axion],
);

CategoryModel service = CategoryModel(
  id: 12,
  name: 'Servicio',
  icon: 'assets/icons/categories/service.png',
  isIncome: false,
  backgroundColor: black,
  iconColor: white,
  subCategories: [],
);

CategoryModel ypf = CategoryModel(
  id: 13,
  name: 'YPF',
  icon: 'assets/icons/categories/ypf.png',
  isIncome: false,
  backgroundColor: blue,
  iconColor: white,
  subCategories: [],
);

CategoryModel shell = CategoryModel(
  id: 14,
  name: 'Shell',
  icon: 'assets/icons/categories/shell.png',
  isIncome: false,
  backgroundColor: white,
  subCategories: [],
);

CategoryModel health = CategoryModel(
  id: 15,
  name: 'Salud',
  icon: 'assets/icons/categories/health.png',
  isIncome: false,
  backgroundColor: white,
  iconColor: red,
  subCategories: [dentist, pharmacy, haircut],
);

CategoryModel dentist = CategoryModel(
  id: 16,
  name: 'Dentista',
  icon: 'assets/icons/categories/dentist.png',
  isIncome: false,
  backgroundColor: white,
  iconColor: blue,
  subCategories: [],
);

CategoryModel pharmacy = CategoryModel(
  id: 17,
  name: 'Farmacia',
  icon: 'assets/icons/categories/pharmacy.png',
  isIncome: false,
  backgroundColor: white,
  iconColor: green,
  subCategories: [],
);

CategoryModel hangouts = CategoryModel(
  id: 18,
  name: 'Salidas',
  icon: 'assets/icons/categories/entertainment.png',
  isIncome: false,
  backgroundColor: green,
  iconColor: white,
  subCategories: [cinema],
);

CategoryModel cinema = CategoryModel(
  id: 19,
  name: 'Cine',
  icon: 'assets/icons/categories/cinema.png',
  isIncome: false,
  backgroundColor: white,
  iconColor: black,
  subCategories: [],
);

CategoryModel home = CategoryModel(
  id: 20,
  name: 'Hogar',
  icon: 'assets/icons/categories/home.png',
  isIncome: false,
  backgroundColor: yellow,
  iconColor: black,
  subCategories: [],
);

CategoryModel services = CategoryModel(
  id: 21,
  name: 'Servicios',
  icon: 'assets/icons/categories/tax.png',
  isIncome: false,
  backgroundColor: blue,
  iconColor: white,
  subCategories: [movistar, personal, prime, netflix, disneyplus, spotify],
);

CategoryModel movistar = CategoryModel(
  id: 22,
  name: 'Movistar',
  icon: 'assets/icons/categories/movistar.png',
  isIncome: false,
  backgroundColor: white,
  subCategories: [],
);

CategoryModel personal = CategoryModel(
  id: 23,
  name: 'Personal',
  icon: 'assets/icons/categories/personal.png',
  isIncome: false,
  backgroundColor: white,
  subCategories: [],
);

CategoryModel creditCard = CategoryModel(
  id: 24,
  name: 'Tarjeta de Credito',
  icon: 'assets/icons/categories/creditcard.png',
  isIncome: false,
  backgroundColor: purple,
  iconColor: white,
  subCategories: [visa, mastercard],
);

CategoryModel visa = CategoryModel(
  id: 25,
  name: 'VISA',
  icon: 'assets/icons/categories/visa.png',
  isIncome: false,
  backgroundColor: white,
  subCategories: [],
);

CategoryModel mastercard = CategoryModel(
  id: 26,
  name: 'Mastercard',
  icon: 'assets/icons/categories/mastercard.png',
  isIncome: false,
  backgroundColor: white,
  subCategories: [],
);

CategoryModel savings = CategoryModel(
  id: 27,
  name: 'Ahorros',
  icon: 'assets/icons/categories/savings.png',
  isIncome: false,
  backgroundColor: lightGreen,
  iconColor: black,
  subCategories: [],
);

CategoryModel gifts = CategoryModel(
  id: 28,
  name: 'Regalos',
  icon: 'assets/icons/categories/gift.png',
  isIncome: false,
  backgroundColor: yellow,
  iconColor: black,
  subCategories: [],
);

CategoryModel netflix = CategoryModel(
  id: 29,
  name: 'Netflix',
  icon: 'assets/icons/categories/netflix.png',
  isIncome: false,
  backgroundColor: black,
  subCategories: [],
);

CategoryModel haircut = CategoryModel(
  id: 30,
  name: 'Peluqueria',
  icon: 'assets/icons/categories/peluqueria.png',
  isIncome: false,
  backgroundColor: white,
  iconColor: orange,
  subCategories: [],
);

CategoryModel others = CategoryModel(
  id: 31,
  name: 'Otros',
  icon: 'assets/icons/categories/others.png',
  isIncome: false,
  backgroundColor: grey,
  iconColor: white,
  subCategories: [],
);

CategoryModel fuel = CategoryModel(
  id: 32,
  name: 'Nafta',
  icon: 'assets/icons/categories/fuel.png',
  isIncome: false,
  backgroundColor: black,
  iconColor: white,
  subCategories: [],
);

CategoryModel parking = CategoryModel(
  id: 33,
  name: 'Estacionamiento',
  icon: 'assets/icons/categories/parking.png',
  isIncome: false,
  backgroundColor: black,
  iconColor: white,
  subCategories: [],
);

CategoryModel toll = CategoryModel(
  id: 34,
  name: 'Peaje',
  icon: 'assets/icons/categories/toll.png',
  isIncome: false,
  backgroundColor: black,
  iconColor: white,
  subCategories: [],
);

CategoryModel axion = CategoryModel(
  id: 35,
  name: 'Axion',
  icon: 'assets/icons/categories/axion.png',
  isIncome: false,
  backgroundColor: white,
  subCategories: [],
);

CategoryModel shopping = CategoryModel(
  id: 36,
  name: 'Compras',
  icon: 'assets/icons/categories/shopping.png',
  isIncome: false,
  backgroundColor: yellow,
  iconColor: black,
  subCategories: [clothes, electro, home, gifts, pets],
);

CategoryModel clothes = CategoryModel(
  id: 37,
  name: 'Ropa',
  icon: 'assets/icons/categories/clothes.png',
  isIncome: false,
  backgroundColor: yellow,
  iconColor: black,
  subCategories: [],
);

CategoryModel spotify = CategoryModel(
  id: 38,
  name: 'Spotify',
  icon: 'assets/icons/categories/spotify.png',
  isIncome: false,
  backgroundColor: black,
  subCategories: [],
);

CategoryModel secure = CategoryModel(
  id: 39,
  name: 'Seguro',
  icon: 'assets/icons/categories/secure.png',
  isIncome: false,
  backgroundColor: black,
  iconColor: white,
  subCategories: [],
);

CategoryModel disneyplus = CategoryModel(
  id: 40,
  name: 'Disney+',
  icon: 'assets/icons/categories/disneyplus.png',
  isIncome: false,
  backgroundColor: white,
  iconColor: blue,
  subCategories: [],
);

CategoryModel transferIn = CategoryModel(
  id: 41,
  name: 'Transfer in',
  icon: 'assets/icons/categories/transfer.png',
  isIncome: true,
  backgroundColor: green,
  iconColor: white,
  subCategories: [],
);

CategoryModel transferOut = CategoryModel(
  id: 42,
  name: 'Transfer out',
  icon: 'assets/icons/categories/transfer.png',
  isIncome: false,
  backgroundColor: red,
  iconColor: white,
  subCategories: [],
);

CategoryModel honorarios = CategoryModel(
  id: 43,
  name: 'Honorarios',
  icon: 'assets/icons/categories/honorarios.png',
  isIncome: true,
  backgroundColor: green,
  iconColor: black,
  subCategories: [],
);

CategoryModel electro = CategoryModel(
  id: 44,
  name: 'Electrodomesticos',
  icon: 'assets/icons/categories/electro.png',
  isIncome: false,
  backgroundColor: yellow,
  iconColor: black,
  subCategories: [],
);

CategoryModel pets = CategoryModel(
  id: 45,
  name: 'Mascotas',
  icon: 'assets/icons/categories/pet.png',
  isIncome: false,
  backgroundColor: yellow,
  iconColor: black,
  subCategories: [],
);

CategoryModel cashGift = CategoryModel(
  id: 46,
  name: 'Regalo en Efectivo',
  icon: 'assets/icons/categories/gift.png',
  isIncome: true,
  backgroundColor: green,
  iconColor: black,
  subCategories: [],
);

CategoryModel sell = CategoryModel(
  id: 47,
  name: 'Venta',
  icon: 'assets/icons/categories/sell.png',
  isIncome: true,
  backgroundColor: green,
  iconColor: black,
  subCategories: [],
);

CategoryModel education = CategoryModel(
  id: 48,
  name: 'Educacion',
  icon: 'assets/icons/categories/education.png',
  isIncome: false,
  backgroundColor: lightOrange,
  iconColor: black,
  subCategories: [],
);

CategoryModel prime = CategoryModel(
  id: 49,
  name: 'Amazon Prime Video',
  icon: 'assets/icons/categories/prime.png',
  isIncome: false,
  backgroundColor: white,
  iconColor: blue,
  subCategories: [],
);
