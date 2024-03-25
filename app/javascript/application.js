// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener('turbo:load', () => {
  const openMenuButton = document.querySelector('.hamburger-menu-select')

  const popmenu = document.querySelector('.header-nav')

  openMenuButton.addEventListener('click', () => {
    popmenu.classList.toggle("open")
  })
})


