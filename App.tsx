import * as React from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {createNativeStackNavigator} from '@react-navigation/native-stack';
import AddMoneyScreen from './AddMoneyScreen';
import AddMoneyTransactionScreen from './AddMoneyTransactionScreen';

const Stack = createNativeStackNavigator();

const App = () => {
  return (
    <NavigationContainer>
      <AddMoneyScreen></AddMoneyScreen>
      {/* <Stack.Navigator initialRouteName='Home'>
        <Stack.Screen
          name="Home"
          component={AddMoneyScreen}
          options={{title: 'Home'}}
        />
        <Stack.Screen
          name="Details"
          component={AddMoneyTransactionScreen}
          options={{title: 'Details'}}
        />
      </Stack.Navigator> */}
    </NavigationContainer>
  );
};

export default App;
