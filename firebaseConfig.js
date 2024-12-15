// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyAoRWlGWqsqJtr7SoB6GbqlIqpGsCOSNu8",
  authDomain: "food-fito.firebaseapp.com",
  projectId: "food-fito",
  storageBucket: "food-fito.firebasestorage.app",
  messagingSenderId: "1013172457787",
  appId: "1:1013172457787:web:71f8fbcf7e65ddcb02e71e",
  measurementId: "G-XKE5M59CRE"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);