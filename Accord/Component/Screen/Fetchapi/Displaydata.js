import {Text, View, Dimensions, Image, TouchableOpacity} from 'react-native';
import React, {Component} from 'react';
import {colors} from '../../Untils/colors';

export default class Displaydata extends Component {
  constructor(pros) {
    super(pros);
    // console.log(
    //   'ths.props = ' + JSON.stringify(this.props.state.country, null),
    // );
    console.log(
      '\n\n\n\nthis.propsmmmmm = ' + JSON.stringify(this.props, null, 2),
    );
    this.state = {};
  }

  render() {
    return (
      <View
        style={{
          height: Dimensions.get('screen').height / 1,
          backgroundColor: colors.Cultured,
        }}>
        <Image
          style={{
            alignItems: 'center',
            alignSelf: 'center',
            resizeMode: 'contain',
            height: Dimensions.get('screen').height / 2.8,
            aspectRatio: 1,
          }}
          source={{uri: this.props.route.params.text.logo}}
        />

        <View
          style={{
            flex: 1,
            borderRadius: 10,
            justifyContent: 'center',
            backgroundColor: colors.Teal,
          }}>
          <Text
            style={{
              fontSize: 20,
              color: colors.white,
              justifyContent: 'center',
            }}>
            {'name :-' + this.props.route.params.text.name}
          </Text>
          <Text style={{fontSize: 20, color: colors.white}}>
            {'country :-' + this.props.route.params.text.country}
          </Text>
          <Text style={{fontSize: 20, color: colors.white}}>
            {'slogan :-' + this.props.route.params.text.country}
          </Text>

          <Text style={{fontSize: 20, color: colors.white}}>
            {'head_quaters :-' + this.props.route.params.text.head_quaters}
          </Text>
          <Text style={{fontSize: 20, color: colors.white}}>
            {'website :-' + this.props.route.params.text.website}
          </Text>
          <Text style={{fontSize: 20, color: colors.white}}>
            {'established :-' + this.props.route.params.text.established}
          </Text>
          <Text style={{fontSize: 20, color: colors.white}}></Text>
          <TouchableOpacity>
            <View
              style={{
                padding: 10,
                alignItems: 'center',
                margin: 30,
                borderRadius: 20,
                backgroundColor: colors.white,
              }}>
              <Text
                style={{
                  justifyContent: 'center',
                  alignItems: 'center',
                  color: colors.Black,
                }}>
                NEXT
              </Text>
            </View>
          </TouchableOpacity>
        </View>
      </View>
    );
  }
}
