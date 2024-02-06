import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'

createApp(App).mount('#app')

// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyAlx7NWmC8hbj-F41-S_u2Dj4gO1rR-XQg",
  authDomain: "scheduflow.firebaseapp.com",
  projectId: "scheduflow",
  storageBucket: "scheduflow.appspot.com",
  messagingSenderId: "194957425147",
  appId: "1:194957425147:web:fe924902a254cebd9a335e"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
