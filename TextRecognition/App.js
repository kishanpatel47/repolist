// import { View, Text, Image } from 'react-native'
// import React, { useEffect, useState } from 'react'
// import { launchImageLibrary } from 'react-native-image-picker'
// import  TextRecognitionOptions  from 'react-native-text-recognition'
// export default function App() {
// const [image ,setImage] =useState(null);
// const [text,setText] =useState(null);

// useEffect(()=>{
//   launchImageLibrary({title: "Pick an Image", maxWidth: 800, maxHeight: 600}, res => {
//     if (res.didCancel) {
//       console.log("User cancelled!");
//     } else if (res.error) {
//       console.log("Error", res.error);
//     } else {
//       console.log("res" + JSON.stringify(res));
//       setImage(res.assets[0].uri);
//       TextRecognition();
//     }
//   });
// },[]);

//  const TextRecognition =async()=>{

// if(image){
  
//  const result = await TextRecognitionOptions.recognize(image,{
//   visionIgnoreThreshold:0.12
//  });
// alert('text'+ JSON.stringify(result,null,2));
// setText(result)
// }
// }


// return (
//     <View>
//       <Text>{text}</Text>
//     <Image
//     source={{uri:image}}
//     style={{height:50,width:50}}

    
//     />
//     </View>
//   )
// }
import React, {useEffect, useState} from 'react';
import { launchCamera, launchImageLibrary } from 'react-native-image-picker';
import TextRecognition from 'react-native-text-recognition';

import {
  SafeAreaView,
  StatusBar,
  Text,
  View,
} from 'react-native';

const App = () => {
  const [image, setImage] = useState(null);
  const [text, setText] = useState(null);

useEffect(() => {
  launchCamera({}, setImage); //launch camera (active)
}, []);

// useEffect(() => {
//   launchImageLibrary({}, setImage); //i can launch library using this
// }, []);

useEffect(() => {
  (async () => {
  if (image) {
    const result = await TextRecognition.recognize(image.assets[0].uri);

    console.log(result);

for (let index = 0; index < result.length; index++) {
  const element = result[index];
  alert("ypu"+ element  )
  if(element.charAt(name)){
    alert(element[0])
  }
  
}
    setText(result);
    console.log("result" +JSON.stringify(result,null,2))
    console.log("name"+ JSON.stringify(result[2],null,2) )
  }
  });
},[image]);

  return (
    <SafeAreaView>
      <StatusBar>
        <View>
          <Text>Text Recognition</Text>
            <Text>{text}</Text> 
        </View>
      </StatusBar>
    </SafeAreaView>
  );
};

export default App;
