import 'package:wallet_app/data/data.dart';

class UserRepository {
  UserRepository();

  Future<List<UserModel>> getUsers() async {
    return defaultUsers;
  }
}

UserModel user = UserModel(
  id: '0',
  name: 'Gonzalo Bally',
  password: '1234',
  image: '',
  accounts: [...defaultAccounts],
  transactions: [],
  categories: [],
  creditCards: [],
  tags: [],
);

List<UserModel> defaultUsers = [user];
