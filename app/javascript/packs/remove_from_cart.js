$(document).on('turbolinks:load', () => {
  console.log("this is remove_from_cart.js")

  $('.remove_cart').on('click', (event)=> {
    let name = event.target.getAttribute("data-id")
    console.log(name);
    gtag('event', 'remove_from_cart', {'cart_drop': name})
  })
})