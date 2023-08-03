import { Image, Text, View, StatusBar, Dimensions, TouchableOpacity, Alert } from 'react-native'
import React, { Component } from 'react'
import AppBase from '../AppBase'

import AppTheme from '../helper/AppTheme'
import CustomText from '../helper/customView/CustomText'
import strings from '../LanguageFiles/LocalizedString'
import CustomImage from '../helper/customView/CustomIcon'
import CustomTextInput from '../helper/customView/CustomTextInput'
import CustomButton from '../helper/customView/CustomButton'
import API from '../connection/http_utils'
import auth from '@react-native-firebase/auth';
import { decode as atob, encode as btoa } from 'base-64';

// import { GoogleSignin } from '@react-native-google-signin/google-signin';
import { firebase } from '@react-native-firebase/database'
import { GoogleSignin,statusCodes } from '@react-native-google-signin/google-signin';

GoogleSignin.configure({
  webClientId: '311511167263-41v49rg90dqg9tuk933hr7m17a5f7a73.apps.googleusercontent.com',
  offlineAccess: true,
});
export default class Login extends Component {

    constructor(props) {
        super(props);
       this.state = {

            // isOTpSent: false,
            // userIdText: '',
        }
    }
  
 GoogleSignin= async()=>{
    const { idToken } = await GoogleSignin.signIn().catch((e) => {
        Alert.alert(e.message)
   
      });
      // Create a Google credential with the token
      const googleCredential = await auth.GoogleAuthProvider.credential(idToken);
      // Sign-in the user with the credential
      await auth().signInWithCredential(googleCredential)
        .then((res) => {
         
          Alert.alert('UserData', JSON.stringify(res))
        }).catch((e) => {
          Alert.alert(e.message)
        });
      const accessToken = await (await GoogleSignin.getTokens()).accessToken;
      // console.log(res);
      console.log(accessToken);
      
    }
     googleSignOut = async () => {
      setLoading(true)
      auth().signOut().then(() => {
        console.log('User sign-out successfully!');
      }).catch(e => Alert.alert('Error', e.message));
      setLoading(false)
    // try {
    //     // add any configuration settings here:
    //     await GoogleSignin.hasPlayServices();
    //     const userInfo = await GoogleSignin.signIn();
    //     this.setState({ userInfo: userInfo, loggedIn: true });
    //     // create a new firebase credential with the token
    //     const credential = auth.GoogleAuthProvider.credential(userInfo.idToken, userInfo.accessToken)
    //     // login with credential
    //     const firebaseUserCredential = await firebase.auth().signInWithCredential(credential);
    //   } catch (error) {
    //     console.log(error)
    //     if (error.code === statusCodes.SIGN_IN_CANCELLED) {
    //       // user cancelled the login flow
    //     } else if (error.code === statusCodes.IN_PROGRESS) {
    //       // operation (f.e. sign in) is in progress already
    //     } else if (error.code === statusCodes.PLAY_SERVICES_NOT_AVAILABLE) {
    //       // play services not available or outdated
    //     } else {
    //       // some other error happened
    //     }
    //   }
 }
    sendOTP = () => {
        if (this.validateMobile(this.state.userIdText)) {
            this.showAlertMessage(strings.OTPSend_Successfully);
            this.setState({ isOTPSent: true, loadingCounter: true });
            const strUser = btoa(
                API.encrpt(
                    JSON.stringify({
                        UserName: this.state.userIdText,
                        MobileDeviceId: this.state.deviceID,
                    }),
                ),
            );
            // this.disableResend();
            console.log('>>>>>>>>>>>>>>>>>>>>>>>>>>>>')
            console.log(API.encryptedString(strUser))
            API.simplePostRequest('api/Account/login', API.encryptedString(strUser))
                .then((dataenc) => {
                    // const res = API.decrpt(dataenc.jsonResponse._bodyBlob.headers.ok);
                    console.log(dataenc.jsonResponse);
                    this.setState({ isOTPSent: true, loadingCounter: false });
                    // if (res.data.isValidate) {
                    //   this.setState({ isOTPSent: true });
                    // console.log(this.isOTPSent);
                    // }
                })
                .catch((err) => {
                    this.setState({ loadingCounter: false });
                    console.log(err);
                    if (err.jsonResponse.status == false) {
                        this.showAlertMessage(err.jsonResponse.message);
                    }
                });
        } else {
            this.showAlertMessage(strings.Valid_Mobile);
        }
    };

    doLogin = () => {
        if (!this.validateMobile(this.state.userIdText)) {
            this.showAlertMessage(strings.Valid_Mobile);
        } else if (this.state.passwordText.length <= 0) {
            this.showAlertMessage(strings.Valid_OTP);
        } else {
            // this.setState({
            //     loadingCounter: true,
            // });
            let loginParam = JSON.parse(
                JSON.stringify({
                    username: this.state.userIdText,
                    password: this.state.passwordText,
                }),
            );
            const upwd = API.getUserPassword(
                this.state.userIdText,
                this.state.passwordText,
            );
            API.encrypt(upwd.user)
                .then((encUsername) => {
                    // console.log(encUsername);
                    loginParam.username = btoa(encUsername);
                    API.encrypt(upwd.pwd).then((encPassword) => {
                        loginParam.password = btoa(encPassword);
                        // console.log('loginParam', loginParam);
                        API.authApi(loginParam)
                            .then((data) => {
                                // this.setState({
                                //     loadingCounter: false,
                                // });
                                console.log('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
                                console.log(data.jsonResponse);
                                if (data.jsonResponse.access_token) {
                                    this.SaveUserInfo(data.jsonResponse);
                                    this.saveToken(data.jsonResponse.access_token);
                                    this.props.navigation.replace('dashboard');
                                } else {
                                    this.showAlertMessage(data.jsonResponse.error_description);
                                }
                            })
                            .catch((err) => {
                                this.setState({
                                    loadingCounter: false,
                                });
                                console.log(err);
                                if (err.jsonResponse.status == false) {
                                    this.showAlertMessage(err.jsonResponse.message);
                                }
                            });
                    });
                })
                .catch((error) => {
                    console.log(error);
                });
        }
    };

    LeftarrowandTitle = () => {
        return (
            <View style={{ margin: 10 }}>
                <CustomImage source={require('../../Assets/Image/left-arrow.png')} customstyle={{ height: 20, width: 20 }} onPress={() => Alert.alert("Are you sure Logout", {

                })} />
                <CustomText

                    customStyle={{ color: AppTheme.APPCOLOR.BLACK, top: 10, fontWeight: 'bold', fontSize: 20 }}
                    text={strings.WELCOME_BACK}
                />
                <CustomText

                    customStyle={{ color: AppTheme.APPCOLOR.BLACK, top: 10 }}
                    text={strings.SIGN_YOUR_ACCOUNT}
                />


            </View>
        )
    }
//     GOOGLE_LOGIN =async()=>{
//   auth()
//   .createUserWithEmailAndPassword('jane.doe@example.com', 'SuperSecretPassword!')
//   .then(() => {
//     console.log('User account created & signed in!');
//   })
//   .catch(error => {
//     if (error.code === 'auth/email-already-in-use') {
//       console.log('That email address is already in use!');
//     }

//     if (error.code === 'auth/invalid-email') {
//       console.log('That email address is invalid!');
//     }

//     console.error(error);
//   });
//         const { idToken } = await GoogleSignin.signIn();

//   // Create a Google credential with the token
//   const googleCredential = auth.GoogleAuthProvider.credential(idToken);

//   // Sign-in the user with the credential
//   return auth().signInWithCredential(googleCredential);
    // }
    MobileNumerotpVerification = () => {
        return (
           
           <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
                <CustomTextInput
                    ref={(ref) => (this.nameInputTextRef = ref)}

                    style={[{ justifyContent: 'center', backgroundColor: AppTheme.APPCOLOR.MEDIUAM_GREY, width: Dimensions.get('screen').width / 1.2, borderRadius: 10 }]}
                    // returnKeyType={'next'}
                    placeholder={strings.MOBILE_NUMBER}
                    keyboardType={'number-pad'}

                    color={AppTheme.APPCOLOR.WHITE}
                    placeholderTextColor={AppTheme.APPCOLOR.WHITE}
                    onChangeText={(value) => {

                        this.setState({ userIdText: value })
                    }
                    }
                // onSubmitEditing={() => { this.phoneInputTextRef.focus(); }}
                />
                <CustomTextInput
                    textContentType='oneTimeCode'
                    autoComplete='sms-otp'
                    maxLength={6}
                    ref={(ref) => (this.passwordInputTextRef = ref)}
                    onSubmitEditing={() => {
                        this.doLogin()
                        Keyboard.dismiss()
                    }}

                    color={AppTheme.APPCOLOR.WHITE}
                    secureTextEntry={this.state.hidePassword}
                    style={[{ top: 10, paddingLeft: 12, justifyContent: 'center', backgroundColor: AppTheme.APPCOLOR.MEDIUAM_GREY, width: Dimensions.get('screen').width / 1.2, borderRadius: 10 }]}
                    keyboardType={"numeric"}
                    returnKeyType={'done'}
                    placeholder={strings.OTP}
                    placeholderTextColor={AppTheme.APPCOLOR.WHITE}
                    onChangeText={(value) =>
                        this.setState({ passwordText: value })
                    }
                />

                <View style={{ alignSelf: 'flex-end', right: 35, top: 15 }}>
                    <CustomButton textname={strings.RESEND_OTP} style={{ color: AppTheme.APPCOLOR.Turquoise, alignItems: 'flex-end' }} />
                </View>

                <CustomButton
                    textname={strings.SIGN_IN}

                    onPress={() => {
                        if (this.state.isOTpSent && this.state.userIdText) {
                            this.doLogin()
                        }
                        else {
                            this.sendOTP()
                        }
                    }
                    }
                    style={{ backgroundColor: AppTheme.APPCOLOR.Turquoise, width: Dimensions.get('screen').width / 1.5, textAlign: 'center', top: 30, padding: 12, color: AppTheme.APPCOLOR.WHITE, borderRadius: 10 }}
                />

                <Text style={{ top: 40, color: AppTheme.APPCOLOR.BLACK }}>{strings.DONTAHAVEACCOUNT} <Text style={{ color: AppTheme.APPCOLOR.Turquoise }} onPress={() => this.props.navigation.navigate('RegisterScreen')}>{strings.SIGN_UP}</Text></Text>

           {this.Social_Login()}    
            </View>





        )

    }
  
    Social_Login = () => {
        return (
            <TouchableOpacity onPress={() =>{this.GoogleSignin()}}>
                <View style={{ borderRadius: 15, top: 65, padding: 10, backgroundColor: AppTheme.APPCOLOR.GREY, width: Dimensions.get('screen').width / 1.3, flexDirection: 'row' }}>

                    <Image source={require('../../Assets/Image/google.png')} style={{ justifyContent: 'center', }} />
                    <View style={{ flex: 1 }}>
                        <Text style={{ alignSelf: 'center', textAlign: 'right', color: AppTheme.APPCOLOR.BLACK }}>{strings.GOOGLE_LOGIN}</Text>
                    </View>

                </View>
            </TouchableOpacity>


        )
    }



    render() {
        return (
            <View style={{ flex: 1 }}>
                <StatusBar
                    translucent={false}
                    backgroundColor={AppTheme.APPCOLOR.Turquoise}
                    barStyle={'default'}
                />


                {this.LeftarrowandTitle()}

                {this.MobileNumerotpVerification()}
                {/* <View>
                    {this.Social_Login()}

                </View> */}

            </View>
        )
    }
}
    // {this.Social_Login()}