import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_market/features/auth/domain/respotries/auth_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future completeInfomation(
      {String? name, String? phoneNumber, String? adress}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, UserCredential>> loginWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      // Once signed in, return the UserCredential
      return Right(await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential));
    } catch (e) {
      return left(Exception("something went wrong"));
    }
  }

  @override
  Future<Either<Exception, UserCredential>> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return Right(
          await FirebaseAuth.instance.signInWithCredential(credential));
    } catch (e) {
      return left(Exception("something went wrong"));
    }
  }
}
