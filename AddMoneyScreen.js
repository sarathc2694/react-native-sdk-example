import React from 'react';
import {useNavigation} from '@react-navigation/native';
import {View, Button, StyleSheet} from 'react-native';

const AddMoneyScreen = () => {
  const navigation = useNavigation();
  const handleAddMoney = () => {
    navigation.navigate('Details');
  };

  return (
    <View style={styles.container}>
      <Button title="Add Money via PSP App" onPress={handleAddMoney} />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  title: {
    fontSize: 24,
    marginBottom: 20,
  },
});

export default AddMoneyScreen;
