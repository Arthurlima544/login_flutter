import 'package:authentication/Pages/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

//Classe de authenticação dos servicos
class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  //construtor
  AuthenticationService(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> SignOut() async {
    await _firebaseAuth.signOut();
  }

  //métodos para verificação de logado ou deslogado
  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch (error) {
      return error.message;
    }
  }

  Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed up";
    } on FirebaseAuthException catch (error) {
      return error.message;
    }
  }
}
