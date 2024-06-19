import * as React from 'react';
import AddMoneyTransactionScreen from './AddMoneyTransactionScreen';

const App = ({ data }) => {
  return (
    <AddMoneyTransactionScreen data={data} />
    // <NavigationContainer>
    //   <Stack.Navigator initialRouteName='Home'>
    //     <Stack.Screen
    //       name="Home"
    //       component={AddMoneyScreen}
    //       options={{title: 'Home'}}
    //     />
    //     <Stack.Screen
    //       name="Details"
    //       component={AddMoneyTransactionScreen}
    //       options={{title: 'Details'}}
    //     />
    //   </Stack.Navigator>
    // </NavigationContainer>
  );
};

export default App;
