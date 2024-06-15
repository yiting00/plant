//處理地址和取貨方式
const method = document.getElementById('method');
const address = document.getElementById('address');

method.addEventListener('change', () => {
    const way = method.value;
    if (way === 'self') {
    address.value = 'none'; 
    } else if (way === 'lazy') {
    address.value = 'home';
    
    }
});

address.addEventListener('change', () => {
    const selectedColor = address.value;
    if (selectedColor === 'home') {
    method.value = 'lazy'; 
    } else if (selectedColor === 'none') {
    method.value = 'self'; 
    } else {

    }
});

//上一頁和確認按鈕
var prev = document.getElementById("prev");
var span = document.getElementsByClassName("back")[0];

prev.onclick = function() {
    window.location.href = "cart.html"; 
};

span.onclick = function() {
    window.location.href = "index.html"; 
};

//付款方式
window.addEventListener('DOMContentLoaded', () => {
    const send = document.getElementById('send');
    const payment = document.getElementById('payment');
    const pop2 = document.getElementById('pop2');
    const pop = document.getElementById('pop');
    const closeButtons = document.querySelectorAll('.backOnce');

    payment.addEventListener('change', () => {
    const pay = payment.value;

    if (pay === 'online') {
        send.textContent = '確認結帳';
    } else if (pay === 'pay') {
        send.textContent = '送出訂單';
    }
    });   

    send.addEventListener('click', () => {
      if (send.textContent === '確認結帳') {
        pop.style.display = 'block';
      } else if (send.textContent === '送出訂單') {
        pop2.style.display = 'block';
      }
    });

    closeButtons.forEach((button) => {
        button.addEventListener('click', () => {
          pop.style.display = 'none';
          pop2.style.display = 'none';
        });
    });
});

//卡號只能是數字且不能填空
document.getElementById('form').addEventListener('submit', function(event) {
  event.preventDefault(); // Prevent the form from submitting normally
  var cardNumber = document.getElementById('bank').value;

  if (!/^\d+$/.test(cardNumber)) {
    alert('請輸入數字作為信用卡卡號.');
    return;
  }

  // Show the pop-up
  document.getElementById('pop2').style.display = 'block';
});

//付款成功
pay.onclick = function() {
    pop2.style.display = 'block';
}