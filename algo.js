var monthly_invoices = [
  { invoice_id: 11, subscriber_id: 1, paid: true },
  { invoice_id: 22, subscriber_id: 2, paid: true },
  { invoice_id: 33, subscriber_id: 3, paid: false },
  { invoice_id: 44, subscriber_id: 4, paid: true },
  { invoice_id: 555, subscriber_id: 5, paid: false }
];

var subscribers = [
  {
    subscriber_id: 1,
    username: "Jaylen Brown",
    email: "jaylen.brown@gmail.com"
  },
  {
    subscriber_id: 2,
    username: "Kyrie Irving",
    email: "kyrie.irving@gmail.com"
  },
  { subscriber_id: 3, username: "Al Horford", email: "al.horford@gmail.com" },
  {
    subscriber_id: 4,
    username: "Jayson Tatum",
    email: "jayson.tatum@gmail.com"
  },
  {
    subscriber_id: 5,
    username: "Gordon Hayward",
    email: "gordon.hayward@gmail.com"
  }
];

function unpaidAccounts(monthly_invoices) {
  var unpaidArr = [];
  monthly_invoices.forEach(invoice => {
    if (invoice.paid === false) {
      unpaidArr.push(invoice.subscriber_id);
    }
  });
  return unpaidArr;
}

function findUsernames(subscribers) {
  var sub = [];
  var unpaidAccountNumbers = unpaidAccounts(monthly_invoices);
  subscribers.forEach(subscriber => {
    if (unpaidAccountNumbers.includes(subscriber.subscriber_id)) {
      sub.push(
        subscriber.username +
          " has not paid, please send a cancellation notice to" +
          subscriber.email
      );
    }
  });
  return sub;
}

console.log(unpaidAccounts(monthly_invoices, subscribers));
console.log(findUsernames(subscribers));
