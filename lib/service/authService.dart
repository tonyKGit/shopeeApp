import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService{
  static FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  Future createUserWithPhone(String phone, BuildContext context) async{
    print('comeint');
    _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 10),
        verificationCompleted: (AuthCredential authCredential){
          print('123');
          _firebaseAuth.signInWithCredential(authCredential).then((value){
            Navigator.of(context).pushNamed('/smsCertificationScreen');
          }).catchError((e){
            return 'error';
          });
        },
        verificationFailed:(error) {
          return 'error';
        },
        codeSent: (String verificationId, [int forceResendingToken]){
          print('123');
          final _codeController = TextEditingController();
          showDialog(
              context: context,
            barrierDismissible: false,
              builder: (context) => AlertDialog(
                title: Text('Enter Verification'),
                content: Column(
                  children: [
                    TextField(controller: _codeController)
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: (){
                        var _credential = PhoneAuthProvider.getCredential(
                            verificationId: verificationId,
                            smsCode: _codeController.text.trim());
                        _firebaseAuth.signInWithCredential(_credential).then((value){
                          //Navigator.of(context)
                          print('123');
                          Navigator.of(context).pushNamed('/smsCertificationScreen',arguments: 'success');
                        }).catchError((e){
                          return 'error';
                        });
                      },
                      child: Text('submit'))
                ],
              )
          );
        },
        codeAutoRetrievalTimeout: (String verificationId){
          verificationId = verificationId;
          print(verificationId);
          print("Timeout");
        }
    );
  }

  static signInWithEmail(String email,String password) async{
    final res = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    final User user = res.user;
    return user;
  }
}