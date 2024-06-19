import React, {useState} from 'react';
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Linking,
} from 'react-native';
import FastImage from 'react-native-fast-image';
import {Card} from 'react-native-elements';

const AddMoneyTransactionScreen = ({data}) => {
  const [amount, setAmount] = useState('');
  console.log('data is ---', data);

  const initializePaymentSheet = async () => {
    try {
      const appUrl = `upidemoapp://upi/pay?am=${amount}&txnId=12345`;
      if (await Linking.canOpenURL(appUrl)) {
        return await Linking.openURL(appUrl);
      } else {
        alert('Cannot Open URL ', appUrl);
      }
    } catch (err) {
      console.log('Error is ', err);
      alert('Redirecting to Demo app failed because of ', err, url);
    }
  };

  return (
    <ScrollView contentContainerStyle={styles.contentContainerStyle}>
      <View style={styles.container}>
        <Card>
          <Text style={styles.title}>Account Details</Text>
          <Text>Name: {data.name}</Text>
          <Text>Account Number: {data.accountNumber}</Text>
          <Text>Balance: {data.balance}</Text>
        </Card>
        <TextInput
          style={styles.input}
          placeholder="Enter amount"
          keyboardType="numeric"
          value={amount}
          onChangeText={setAmount}
        />
        <Card>
          <Text style={styles.title}>Pay via UPI apps</Text>
          <View style={styles.logoContainer}>
            <TouchableOpacity
              style={styles.iconButton}
              onPress={initializePaymentSheet}>
              <FastImage
                source={require('./assets/gpay.png')}
                style={styles.logo}
                resizeMode={FastImage.resizeMode.contain}
              />
            </TouchableOpacity>
            <TouchableOpacity
              style={styles.iconButton}
              onPress={initializePaymentSheet}>
              <FastImage
                source={require('./assets/paytm.png')}
                style={styles.logo}
                resizeMode={FastImage.resizeMode.contain}
              />
            </TouchableOpacity>
            <TouchableOpacity
              style={styles.iconButton}
              onPress={initializePaymentSheet}>
              <FastImage
                source={require('./assets/phonepe.jpeg')}
                style={styles.logo}
                resizeMode={FastImage.resizeMode.contain}
              />
            </TouchableOpacity>
          </View>
        </Card>
      </View>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    padding: 16,
  },
  contentContainerStyle: {
    flex: 1,
    backgroundColor: '#fff',
  },
  title: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  input: {
    height: 40,
    borderColor: 'gray',
    borderWidth: 1,
    marginVertical: 20,
    paddingHorizontal: 10,
    marginHorizontal: 20,
  },
  buttonContainer: {
    marginBottom: 20,
  },
  logoContainer: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    marginVertical: 16,
  },
  logo: {
    width: 50,
    height: 50,
    resizeMode: 'contain',
  },
  iconButton: {
    backgroundColor: '#fff',
    borderRadius: 50,
    padding: 10,
    shadowColor: '#000',
    shadowOffset: {width: 0, height: 2},
    shadowOpacity: 0.8,
    shadowRadius: 2,
    elevation: 5,
  },
});

export default AddMoneyTransactionScreen;
