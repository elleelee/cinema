// let countNum = Number.parseInt(counter.dataset.count, 10);
// const submit = document.querySelector("#booking-submit");
// const input = document.querySelector("#booking_number_of_tickets");
// const bookingTicketPrice = document.querySelector("#booking-ticket-price").dataset.price;
// const ticketPrice = Number.parseInt(bookingTicketPrice, 10);
// const capacity = Number.parseInt(document.querySelector('.show-capacity').dataset.capacity);


const updatePlusOnClick = (element, counter) => {
  let countNum = Number.parseInt(counter.dataset.count, 10);
  const submit = document.querySelector("#booking-submit");
  const input = document.querySelector("#booking_number_of_tickets");
  const bookingTicketPrice = document.querySelector("#booking-ticket-price").dataset.price;
  const ticketPrice = Number.parseInt(bookingTicketPrice, 10);
  const capacity = Number.parseInt(document.querySelector('.show-capacity').dataset.capacity);
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

const updateMinusOnClick = (element, counter) => {
  let countNum = Number.parseInt(counter.dataset.count, 10);
  const submit = document.querySelector("#booking-submit");
  const input = document.querySelector("#booking_number_of_tickets");
  const bookingTicketPrice = document.querySelector("#booking-ticket-price").dataset.price;
  const ticketPrice = Number.parseInt(bookingTicketPrice, 10);
  const capacity = Number.parseInt(document.querySelector('.show-capacity').dataset.capacity);
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
  const counter = document.querySelector("#counter");
  if (counter) {
    const btn = document.querySelectorAll(".incrementer");
    btn.forEach((b) => {
      // console.log(b);
      if (b.dataset.offset === "-1") {
        updateMinusOnClick(b, counter);
      } if (b.dataset.offset === "1") {
        updatePlusOnClick(b, counter);
      }
    });
  }
};

export { bookingIncrementer };
