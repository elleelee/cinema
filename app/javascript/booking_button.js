const counter = document.querySelector("#counter");
// const actions = document.querySelectorAll(".actions");
const btn = document.querySelectorAll(".incrementer");
const btnMinus = document.querySelector(".minus");
// console.log(btnMinus);
// console.log(btnMinus);
let countNum = Number.parseInt(counter.dataset.count, 10);
const submit = document.querySelector("#booking-submit");
const input = document.querySelector("#booking_number_of_tickets");
// let inputInt = Number.parseInt(input, 10);
const bookingTicketPrice = document.querySelector("#booking-ticket-price").dataset.price;
const ticketPrice = Number.parseInt(bookingTicketPrice, 10);
const capacity = Number.parseInt(document.querySelector('.show-capacity').dataset.capacity);
// let inputNum = Number.parseInt(input.value, 10);

// Update counter
// Update the price displayed on the submit button
// Update the value of the read-only input (in cents)
const updatePlusOnClick = (element) => {
  element.addEventListener("click", (event) => {
    if (counter.innerHTML < capacity) {
      countNum += 1;
      counter.innerHTML = countNum;
      submit.value = `Pay£ ${ticketPrice * countNum }`;
      input.value = countNum;
    };
    event.preventDefault();
  });
};

const updateMinusOnClick = (element) => {
  element.addEventListener("click", (event) => {
    if (counter.innerHTML >= 2) {
      countNum -= 1;
      counter.innerHTML = countNum;
      submit.value = `Pay£ ${ticketPrice * countNum }`;
      console.log(ticketPrice, countNum);
      input.value = countNum;
    };
    event.preventDefault();
  });
};

const bookingIncrementer = () => {
  btn.forEach((b) => {
    // console.log(b);
    if (b.dataset.offset === "-1") {
      updateMinusOnClick(b);
    } if (b.dataset.offset === "1") {
      updatePlusOnClick(b);
    }
  });
};

export { bookingIncrementer };
