const calculatePrice = () => {
  console.log("je suis dans le price")
  const hourRate = document.getElementById("talent-price").innerHTML
  console.log(hourRate)
  // console.log(hourRate.innerHTML)

  const begin_date = new Date(document.querySelector(".datepicker").value)
  console.log(begin_date)



  const end_date = new Date(document.querySelector("#end-date").value)
  console.log(end_date)

  const hours = Math.abs(end_date - begin_date) / 36e5
  console.log(hours)


  const totalPrice = hourRate * hours
  console.log(totalPrice)

  const fees = totalPrice * 20 / 100
  console.log(fees)

  const totalNet = totalPrice + fees
  console.log(totalNet)

  document.getElementById("total-price").innerHTML = `${hourRate} € x ${hours} hours : ${hourRate * hours} €`
  document.getElementById("fees").innerHTML = `Fees : ${fees} €`
  document.getElementById("total-net").innerHTML = `TOTAL to pay : ${totalNet} €`
}

const selected_element = document.getElementById("end-date");

if(selected_element) {
  selected_element.addEventListener("change", (event) => {
    event.preventDefault()
    console.log(event)
    calculatePrice()
  })
}




