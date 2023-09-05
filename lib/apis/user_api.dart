import 'package:animations/core/typedef.dart';
import 'package:animations/models/user_model.dart';
import 'package:appwrite/appwrite.dart';

abstract class IUserAPI {
  FutureEitherVoid saveUserData();
}

class UserAPI implements IUserAPI {
  @override
  FutureEitherVoid saveUserData(UserModel usermodel) {
    try {} on AppwriteException catch (e, st) {
    } catch (e, st) {}
  }
}
