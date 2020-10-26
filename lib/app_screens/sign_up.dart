// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:pet_bb/models/pet_code.dart';
// import 'package:pet_bb/models/propensity.dart';
// import 'package:pet_bb/models/user.dart';
// import 'package:pet_bb/screens/user/user_agreement_page.dart';
// import 'package:pet_bb/services/user.dart';
// import 'package:pet_bb/shared/helpers/icon_moon.dart';
// import 'package:pet_bb/shared/style/textInputDecoration.dart';
// import 'package:provider/provider.dart';
// import 'package:pet_bb/constants.dart' as Constants;
// import 'package:pet_bb/shared/widgets/dialog_util.dart' as dialog;

// ///
// /// 이메일 회원 가입 화면
// /// Screens for Email SignUp
// ///
// enum SignUpType { kakao, email, apple }

// class SignUp extends StatefulWidget {
//   final String nickname;
//   final String email;
//   final int petType;
//   final SignUpType signupType;
//   String token;
//   final List<Propensity> petSelectedPropensityList;

//   SignUp(
//       {this.nickname,
//       this.petType,
//       this.email,
//       this.token = "",
//       this.petSelectedPropensityList,
//       this.signupType = SignUpType.email});

//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   bool _isAgreementChecked = false;
//   bool _isServiceTermChecked = true;
//   bool _isAdChecked = false;
//   bool _isConfirmedPassword = false;

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _passwordTextController = TextEditingController();

//   final Map<String, dynamic> _formData = {
//     'email': '',
//     'password': '',
//     'nickname': '',
//     'ad': false,
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: _buildAppBar(),
//         body: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Padding(
//               padding: EdgeInsets.only(left: 20, right: 20),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text('아이디',
//                         style: TextStyle(
//                             fontFamily: 'AppleGothic',
//                             fontSize: 12,
//                             color: Color(0xff333333),
//                             height: 1)),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     _inputEmailWidget(),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     (widget.signupType == SignUpType.email)
//                         ? Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                                 Text('비밀번호',
//                                     style: TextStyle(
//                                         fontFamily: 'AppleGothic',
//                                         fontSize: 12,
//                                         color: Color(0xff333333),
//                                         height: 1)),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 _inputPasswordWidget(),
//                                 SizedBox(
//                                   height: 16,
//                                 ),
//                                 Text('비밀번호 확인',
//                                     style: TextStyle(
//                                         fontFamily: 'AppleGothic',
//                                         fontSize: 12,
//                                         color: Color(0xff333333),
//                                         height: 1)),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 _inputPasswordConfirmWidget(),
//                                 SizedBox(
//                                   height: 16,
//                                 )
//                               ])
//                         : Container(),
//                     Text('닉네임',
//                         style: TextStyle(
//                             fontFamily: 'AppleGothic',
//                             fontSize: 12,
//                             color: Color(0xff333333),
//                             height: 1)),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     _inputNicknameWidget(),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     Text('[선택] 초대코드 입력',
//                         style: TextStyle(
//                             fontFamily: 'AppleGothic',
//                             fontSize: 12,
//                             color: Color(0xff333333),
//                             height: 1)),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     _inputInviteCodeWidget(),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     agreementWidget(),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     serviceTermWidget(),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     adTermWidget(),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     _signUpButtonWidget(),
//                     SizedBox(
//                       height: 30,
//                     ),
//                   ]),
//             ),
//           ),
//         ));
//   }

//   InkWell agreementWidget() {
//     return InkWell(
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(_isAgreementChecked
//               ? 'assets/img/icons/check_on.png'
//               : 'assets/img/icons/check_off.png'),
//           SizedBox(
//             width: 6,
//           ),
//           Text('전체동의',
//               style:
//                   TextStyle(fontSize: 14, color: Color(0xff333333), height: 1)),
//         ],
//       ),
//       onTap: () {
//         setState(() {
//           _isAgreementChecked = !_isAgreementChecked;
//           _isServiceTermChecked = true;
//           if (_isAgreementChecked) {
//             _isAdChecked = true;
//           } else {
//             _isAdChecked = false;
//           }
//         });
//       },
//     );
//   }

//   ///
//   /// 광고 수신 동의 - Consent to receive advertising
//   Row adTermWidget() {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         InkWell(
//           child: Padding(
//               padding: EdgeInsets.only(top: 4, right: 6, bottom: 10),
//               child: Image.asset(_isAdChecked
//                   ? 'assets/img/icons/check_s_on.png'
//                   : 'assets/img/icons/check_s_off.png')),
//           onTap: () {
//             setState(() {
//               _isAdChecked = !_isAdChecked;
//               if (_isAdChecked && _isServiceTermChecked) {
//                 _isAgreementChecked = true;
//               } else {
//                 _isAgreementChecked = false;
//               }
//             });
//           },
//         ),
//         Flexible(
//           child: RichText(
//             text: TextSpan(
//               style:
//                   TextStyle(fontSize: 14, color: Color(0xff333333), height: 1),
//               children: <TextSpan>[
//                 TextSpan(
//                     text: '[선택] 광고성 정보 수신동의\n',
//                     style: TextStyle(
//                         fontSize: 12, color: Color(0xff333333), height: 1.5)),
//                 TextSpan(
//                   text: '마케팅 정보를 수신하시면 혜택을 빠르게 확인할실 수 있습니다.',
//                   style: TextStyle(
//                       fontSize: 12, color: Color(0xff999999), height: 1.5),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   ///
//   /// 서비스 이용약관
//   /// Terms Conditions for Service
//   Row serviceTermWidget() {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         InkWell(
//           child: Padding(
//               padding: EdgeInsets.only(top: 4, right: 6, bottom: 10),
//               child: Image.asset(_isServiceTermChecked
//                   ? 'assets/img/icons/check_s_on.png'
//                   : 'assets/img/icons/check_s_off.png')),
//           onTap: () {
//             setState(() {
//               _isServiceTermChecked = !_isServiceTermChecked;
//               if (_isAdChecked && _isServiceTermChecked) {
//                 _isAgreementChecked = true;
//               } else {
//                 _isAgreementChecked = false;
//               }
//             });
//           },
//         ),
//         Flexible(
//           child: RichText(
//             text: TextSpan(
//               style:
//                   TextStyle(fontSize: 14, color: Color(0xff333333), height: 1),
//               children: <TextSpan>[
//                 TextSpan(
//                     text: '[필수] 아임펫뿜뿜 ',
//                     style: TextStyle(
//                         fontSize: 12, color: Color(0xff333333), height: 1.5)),
//                 TextSpan(
//                     text: '이용약관 및 개인정보처리방침',
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xff317bff),
//                       height: 1.5,
//                       decoration: TextDecoration.underline,
//                     ),
//                     recognizer: TapGestureRecognizer()
//                       ..onTap = () async {
//                         var result = await Navigator.push(
//                             // 약관 페이지 이동 - Moves to Terms-Page
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => UserAgreementPage()));
//                         if (result) {
//                           setState(() {
//                             _isServiceTermChecked = true;
//                             if (_isAdChecked && _isServiceTermChecked) {
//                               _isAgreementChecked = true;
//                             }
//                           });
//                         }
//                       }),
//                 TextSpan(
//                     text: ' 내용을 확인하였으며, 이에 동의합니다.',
//                     style: TextStyle(
//                         fontFamily: 'AppleGothic',
//                         fontSize: 12,
//                         color: Color(0xff333333),
//                         height: 1.5)),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   AppBar _buildAppBar() {
//     String title = "";
//     switch (widget.signupType) {
//       case SignUpType.email:
//         title = "회원가입";
//         break;
//       case SignUpType.kakao:
//         title = "카카오톡으로 회원가입";
//         break;
//       case SignUpType.apple:
//         title = "Apple로 회원가입";
//         break;
//     }
//     return AppBar(
//       brightness: Brightness.light,
//       elevation: 0.0,
//       centerTitle: true,
//       leading: IconButton(
//         icon: Icon(
//           IconMoon.iback,
//           color: Colors.black87,
//           size: 15.0,
//         ),
//         onPressed: () => Navigator.pop(context, null),
//       ),
//       iconTheme: IconThemeData(
//         color: Colors.black87,
//       ),
//       title: Text(title,
//           style: TextStyle(
//               color: Color(0xde151c2a),
//               fontSize: 18.0,
//               fontFamily: 'AppleGothic')),
//       backgroundColor: Colors.white,
//     );
//   }

//   ///
//   /// 이메일 input text field
//   /// kakao 고정 텍스트로 분기
//   /// Email -> Input Text Field
//   /// Branch with Kakao(Talk) Fixed-Text.
//   Widget _inputEmailWidget() {
//     return (widget.signupType != SignUpType.email)
//         ? Container(
//             decoration: BoxDecoration(
//               color: Color(0xffefeff5),
//               border: Border.all(width: 1, color: Color(0xff999999)),
//               borderRadius: BorderRadius.all(Radius.circular(5)),
//             ),
//             width: double.infinity,
//             height: 50,
//             padding: EdgeInsets.only(top: 15, left: 10),
//             child: Text(
//               widget.email,
//               style: TextStyle(
//                   fontSize: 15.0,
//                   color: Color(0xff333333),
//                   fontWeight: FontWeight.w500),
//             ),
//           )
//         : TextFormField(
//             style: Constants.inputTextStyle,
//             decoration: textInputDecoration.copyWith(
//               hintText: '이메일을 입력해주세요',
//             ),
//             validator: (value) {
//               // return null when it's valid
//               String tmpValue = value.replaceAll(new RegExp(' '), '');
//               if (tmpValue.isEmpty) {
//                 return '*필수입력 항목입니다. 확인해주세요';
//               } else if (!RegExp(
//                       r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
//                   .hasMatch(tmpValue)) {
//                 return '* 유효한 이메일 주소를 입력해주세요.';
//               }
//               return null;
//             },
//             onChanged: (value) {
//               _formKey.currentState.validate();
//             },
//             onSaved: (value) {
//               _formData['email'] = value.replaceAll(new RegExp(r' '), '');
//             },
//           );
//   }

//   ///
//   /// 비밀번호 input text field
//   /// Password input text field
//   Widget _inputPasswordWidget() {
//     return TextFormField(
//       obscureText: true,
//       controller: _passwordTextController,
//       style: Constants.inputTextStyle,
//       decoration: textInputDecoration.copyWith(
//         hintText: '영문,숫자 혼합 8자 이상',
//       ),
//       validator: (value) {
//         // return null when it's valid
//         if (value.isEmpty) {
//           return '* 영문,숫자 혼합 8자 이상을 확인해주세요';
//         } else if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d!$%@#£€*?&-]{8,}$")
//             .hasMatch(value)) {
//           return '* 영문,숫자 혼합 8자 이상을 확인해주세요';
//         }
//         return null;
//       },
//       onChanged: (value) {
//         _formKey.currentState.validate();
//       },
//       onSaved: (value) {
//         _formData['password'] = value;
//       },
//     );
//   }

//   ///
//   /// 비밀번호 확인 input text field
//   /// Password Confirm input text field
//   Widget _inputPasswordConfirmWidget() {
//     return Stack(children: [
//       TextFormField(
//         obscureText: true,
//         style: Constants.inputTextStyle,
//         decoration: textInputDecoration.copyWith(
//           hintText: '비밀번호를 한번 더 입력해 주세요',
//         ),
//         validator: (value) {
//           // return null when it's valid
//           if (value.trim().isEmpty) {
//             return '* 영문,숫자 혼합 8자 이상을 확인해주세요1.';
//           } else if (!RegExp(
//                   r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d!$%@#£€*?&-]{8,}$")
//               .hasMatch(value)) {
//             return '* 영문,숫자 혼합 8자 이상을 확인해주세요';
//           }
//           return null;
//         },
//         onChanged: (value) {
//           _formKey.currentState.validate();
//           if (value.isNotEmpty && _passwordTextController.text == value) {
//             setState(() {
//               _isConfirmedPassword = true;
//             });
//           }
//         },
//       ),
//       Positioned(
//           right: 11.0,
//           top: 10,
//           child: Image.asset(_isConfirmedPassword
//               ? 'assets/img/icons/ic_pass_check_on.png'
//               : 'assets/img/icons/ic_pass_check_off.png')),
//     ]);
//   }

//   ///
//   /// 닉네임 input text field
//   /// NickName Input text field
//   Widget _inputNicknameWidget() {
//     return TextFormField(
//       initialValue: widget.nickname,
//       style: Constants.inputTextStyle,
//       decoration: textInputDecoration.copyWith(
//         hintText: '펫님의 이름을 입력해주세요',
//       ),
//       validator: (value) {
//         // return null when it's valid
//         if (value.trim().isEmpty) {
//           return '* 필수입력 항목입니다. 확인해주세요';
//         }
//         return null;
//       },
//       onChanged: (value) {
//         _formKey.currentState.validate();
//       },
//       onSaved: (value) {
//         _formData['nickname'] = value;
//       },
//     );
//   }

//   ///
//   /// 초대 코드 input text field
//   /// Invite Code input text field
//   Widget _inputInviteCodeWidget() {
//     return TextFormField(
//       style: Constants.inputTextStyle,
//       decoration: textInputDecoration.copyWith(
//         hintText: '초대코드 입력하고 무료 사진인화 및 배송권 받기',
//       ),
//       onSaved: (value) {
//         _formData['inviteNo'] = value;
//       },
//     );
//   }

//   ///
//   /// 회원 가입 button
//   /// SignUp button
//   Widget _signUpButtonWidget() {
//     return Container(
//       height: 40,
//       width: MediaQuery.of(context).size.width,
//       child: RaisedButton(
//         child: Text('동의하고 가입하기',
//             style: TextStyle(
//                 fontFamily: 'AppleGothicThin',
//                 fontSize: 14,
//                 color: Color(0xffffffff),
//                 fontWeight: FontWeight.bold,
//                 height: 1)),
//         onPressed: () => _submit(),
//       ),
//     );
//   }

//   ///
//   /// 회원 가입 - SignUp
//   void _submit() async {
//     String joinType;

//     if (!_formKey.currentState.validate()) return;

//     FocusScope.of(context).requestFocus(FocusNode());
//     _formKey.currentState.save();

//     if (!_isServiceTermChecked) {
//       dialog.alert(context, '서비스 이용약관 및 개인정보 처리 동의가 필요합니다.');
//       return;
//     }

//     // 각 회원가입의 타입에 따라 데이터 분기. - Branch Data by each SignUp Types.
//     if (widget.signupType == SignUpType.kakao) {
//       // kakao 회원가입. - SignUp from KakaoTalk
//       joinType = "K";
//       _formData['email'] = widget.email;
//       _formData['token'] = widget.token;
//     } else if (widget.signupType == SignUpType.email) {
//       // email 회원가입. - Signup from Email
//       joinType = "E";
//     } else {
//       // apple 회원가입. - Signup from Apple
//       joinType = "A";
//       _formData['email'] = widget.email;
//       _formData['token'] = widget.token;
//     }
//     _formData['petType'] = widget.petType;
//     var propensities = getPropensityCodeList(widget.petSelectedPropensityList);

//     _formData['propensity'] = propensities;
//     _formData['ad'] = _isAdChecked;

//     print("joinType: ${joinType}");
//     print("joinData: ${_formData}");

//     dialog.progress(context);
//     String code = await UserService().signup(context, _formData, joinType);
//     print(code);
//     if ('S' == code) {
//       List fetchUser = await UserService().fetchUser();
//       User newUser = fetchUser[0];
//       Provider.of<User>(context, listen: false).createUser(newUser);
//       // 공용으로 사용하는 펫코드 리스트를 Provider에 세팅한다.
//       // Set the list of pet codes used for public use on the provider
//       List<dynamic> petCodes = fetchUser[1];
//       Provider.of<PetCode>(context, listen: false).updateList(petCodes);
//       dialog.dismiss(context);
//       dialog.alert(context,
//           '안녕하세요. 아임펫뿜뿜 가입을 환영합니다. ${_formData['nickname']}님의 독특한 개성과 즐거운 일상을 마음껏 뿜뿜하세요.',
//           onPressed: () {
//         Navigator.pop(context, null);
//         Navigator.of(context)
//             .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
//       });
//     } else if ('D01' == code) {
//       dialog.dismiss(context);
//       dialog.alert(context, '이미 등록된 메일주소입니다.\n다른 메일주소를 사용해 주세요.');
//     } else if ('U03' == code) {
//       dialog.dismiss(context);
//       dialog.alert(context, '유효하지 않은 추천인 코드 입니다.\n다시 확인해 주세요.');
//     } else {
//       dialog.dismiss(context);
//       dialog.alert(context, '일시적 장애로 회원가입할 수 없습니다.\n잠시 후 다시 진행해 주세요. ${code}');
//       // B01 = 서버와 클라이언트간의 토큰이 맞지 않음.
//       // B01 = The token between the server and the client is incorrect.
//     }
//   }

//   List<String> getPropensityCodeList(List<Propensity> propensityList) {
//     List<String> codes = [];

//     if (propensityList == null) {
//       return codes;
//     }

//     for (final item in propensityList) {
//       codes.add(item.code);
//     }
//     return codes;
//   }
// }
