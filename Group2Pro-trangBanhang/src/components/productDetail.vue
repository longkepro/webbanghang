<template>
  <div>
    <headerPro></headerPro>
    <menuBar></menuBar>

    <button @click="prevPage()" class="text-2xl text-black block">
      <!-- Icon mũi tên trái -->
      <svg
        xmlns="http://www.w3.org/2000/svg"
        fill="none"
        viewBox="0 0 24 24"
        stroke-width="1.5"
        stroke="currentColor"
        class="size-10"
      >
        <path
          stroke-linecap="round"
          stroke-linejoin="round"
          d="M10.5 19.5 3 12m0 0 7.5-7.5M3 12h18"
        />
      </svg>
    </button>

    <div v-if="product" :key="product.id">
      <div
        class="flex items-center justify-between p-6 rounded-2xl bg-gradient-to-r from-slate-800 via-slate-500 to-yellow-100 text-white w-full max-w-7xl mx-auto shadow-lg h-full"
      >
        <!-- Ảnh sản phẩm -->
        <div class="flex-shrink-0 bg-white rounded-2xl p-4 w-4/12 h-4/12">
          <img
            :src="product.src"
            alt="iPhone"
            class="w-auto h-auto object-cover"
          />
        </div>

        <!-- Nội dung mô tả -->
        <div class="flex-1 px-8">
          <h2 class="text-2xl font-bold mb-4">TÍNH NĂNG NỔI BẬT</h2>
          <ul class="space-y-2 text-white text-base list-disc list-inside">
            <li v-for="(desc, index) in descriptions" :key="index">
              {{ desc }}
            </li>
          </ul>
        </div>
      </div>

      <div class="w-full max-w-7xl mx-auto shadow-lg h-full p-4">
        <h2 class="text-xl font-semibold mb-4">Cam kết sản phẩm</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
          <!-- Box 1 -->
          <div
            class="flex items-start gap-3 p-4 bg-gray-50 rounded-2xl shadow-sm"
          >
            <div class="bg-red-600 rounded-lg p-2 text-white">
              <!-- Icon điện thoại -->
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-6 h-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M12 1a11 11 0 100 22 11 11 0 000-22zm0 4a7 7 0 017 7H5a7 7 0 017-7z"
                />
              </svg>
            </div>
            <p class="text-lg text-gray-800">
              Mới, đầy đủ phụ kiện từ nhà sản xuất
            </p>
          </div>

          <!-- Box 2 -->
          <div
            class="flex items-start gap-3 p-4 bg-gray-50 rounded-2xl shadow-sm"
          >
            <div class="bg-red-600 rounded-lg p-2 text-white">
              <!-- Icon shield -->
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-6 h-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M12 2l7 4v6c0 5.5-3.8 10.7-7 12-3.2-1.3-7-6.5-7-12V6l7-4z"
                />
              </svg>
            </div>
            <p class="text-lg text-gray-800">
              Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong
              30 ngày nếu có lỗi phần cứng từ nhà sản xuất.
              <a href="#" class="text-blue-600 font-medium">Xem chi tiết</a>
            </p>
          </div>

          <!-- Box 3 -->
          <div
            class="flex items-start gap-3 p-4 bg-gray-50 rounded-2xl shadow-sm"
          >
            <div class="bg-red-600 rounded-lg p-2 text-white">
              <!-- Icon tag -->
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-6 h-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M7 7l10 10M7 7l5 5m0 0l5-5M5 13l1-1 5 5-1 1-5-5z"
                />
              </svg>
            </div>
            <p class="text-lg text-gray-800">
              Giá sản phẩm <span class="font-bold">đã bao gồm thuế VAT</span>,
              giúp bạn yên tâm và dễ dàng trong việc tính toán chi phí.
            </p>
          </div>
        </div>
      </div>
        

      <!-- Cha bao ngoài để canh giữa thanh -->
      <div class="sticky bottom-0 left-0 flex justify-center z-50">
        <!-- Thanh mua hàng -->
        <div
          class="w-full max-w-7xl mx-auto shadow-lg md:w-8/12 bg-white px-4 py-3 flex items-center justify-between rounded-t-xl"
        >
          <!-- Hình ảnh + tên sản phẩm -->
          <div class="flex items-center gap-3 overflow-hidden">
            <img
              :src="product.src"
              alt="iPhone"
              class="w-24 h-24 object-cover rounded-md"
            />
            <div class="text-black font-semibold text-sm truncate w-full">
              {{ product.title }}
            </div>
          </div>

          <!-- Giá tiền -->
          <div class="flex flex-col items-end mr-4">
            <span class="text-red-600 font-bold text-lg">{{
              formatPrice(product.price)
            }}</span>
            <span class="text-gray-400 line-through text-sm">34.990.000₫</span>
          </div>

          <!-- Các nút -->
          <div class="flex items-center gap-2">
            <button
              class="border border-blue-600 text-blue-600 px-3 py-1 rounded-md text-sm font-medium"
            >
              Trả góp 0%
            </button>
            <button
              class="bg-red-600 text-white px-4 py-2 rounded-md font-semibold"
            >
              Mua Ngay
            </button>
            <button
              @click="addProduct(product)"
              class="bg-transparent hover:bg-red-600 text-red-700 font-semibold hover:text-white py-2 px-4 border border-red-500 hover:border-transparent rounded-md"
            >
              Them vao gio hang
            </button>

            <transition name="fade">
              <div
                v-if="showNotification"
                class="absolute left-8/12 w-[200px] bottom-24 right-4 bg-green-500 text-white px-4 py-3 rounded-lg shadow-lg z-50"
              >
                ✅ Thêm vào giỏ hàng thành công!
              </div>
            </transition>

             <transition name="fade">
              <div
                v-if="showNotificationErr"
                class="absolute left-8/12 w-[200px] bottom-24 right-4 bg-red-700 text-white px-4 py-3 rounded-lg shadow-lg z-50"
              >
                ❌ Bạn cần đăng nhập để thêm sản phẩm vào giỏ hàng!
              </div>
            </transition>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import headerPro from "./baseComponent/headerPro.vue";
import menuBar from "./baseComponent/menuBar.vue";
import footerPro from "./baseComponent/footerPro.vue";
import useCartStore from "../stores/cartStore";
export default {
  props: ["id"],
  data() {
    return {
      product: {},
      cartStore: null,
      showNotification: false,
      showNotificationErr: false,
      descriptions: [],
    };
  },
  created() {
    this.cartStore = useCartStore();
  },
  components: {
    headerPro,
    menuBar,
    footerPro,
  },
  computed: {
    cart() {
      return this.cartStore.cart; // reactive!
    },
  },
  methods: {
    prevPage() {
      window.history.back();
    },
    async loadProduct() {
      let res = await fetch(`http://localhost:3000/API/index.php?id=${this.id}`);
      //console.log("id=" + this.id);
      const dataObj = await res.json();
      //console.log(dataObj);
      this.product = dataObj;
      //console.log(this.product.description);
      this.descriptions = this.product.description.split(",").filter(Boolean);
    },

    formatPrice(value) {
      if (typeof value !== "number") return "N/A";
      return value.toLocaleString("vi-VN");
    },

    addProduct(product) {
      if(localStorage.getItem("username") === null) {
        this.showNotificationErr = true; // Hiện thông báo lỗi
        setTimeout(() => {
          this.showNotificationErr = false; // Ẩn thông báo lỗi sau 1 giây
        }, 1000);
        return;
        
      }
      else
      {
        //console.log("Thêm sản phẩm vào giỏ hàng:", localStorage.getItem("username"));
        this.cartStore.addToCart(product);
        this.showNotification = true; // Hiện thông báo thành công
        setTimeout(() => {
          this.showNotification = false; // Ẩn thông báo sau 1 giây
        }, 1000);
      }
    },
    subString(string) {
      this.descriptions = string.split(",").filter(Boolean);
      //console.log(this.descriptions);

    },
  },

  mounted() {
    this.loadProduct();
  },
};
</script>
<style scoped>
td {
  border: 1px solid rgb(240, 236, 236);
  background: rgb(210, 207, 207);
}
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>