// stores/user.js
import { defineStore } from 'pinia';

export const useUserStoreToken = defineStore('user', {
  state: () => ({
    username: null,
    logedin: false
  }),
  actions: {
    async fetchSession() {
      try {
        const res = await fetch("http://localhost:3000/php/session.php", {
          credentials: "include"
        });
        const data = await res.json();
        this.username = data.username || null;
        if (data.username != null) {
          localStorage.setItem("username", data.username);
        } else {
          localStorage.removeItem("username");
        }

        if (data.userId != null) {
          localStorage.setItem("userId", data.userId);
        } else {
          localStorage.removeItem("userId");
        }

      } catch (error) {
        console.error("Lỗi khi gọi API session:", error); 
        localStorage.setItem("username", null);
      }
    }
  }
});