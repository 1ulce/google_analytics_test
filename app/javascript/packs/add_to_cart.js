$(document).on('turbolinks:load', () => {
  console.log("this is add_to_cart.js")

  $('.add_cart').on('click', (event)=> {
    let name = event.target.getAttribute("data-id")
    console.log(name);
    gtag('event', 'add_to_cart', {'cart_add': name})
  })
})