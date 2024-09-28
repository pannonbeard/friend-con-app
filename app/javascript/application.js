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

if (navigator.serviceWorker) {
  navigator.serviceWorker.register("/service-worker.js", { scope: "/" })
    .then(() => navigator.serviceWorker.ready)
    .then((registration) => {
      if ("SyncManager" in window) {
        registration.sync.register("sync-forms");
      } else {
        window.alert("This browser does not support background sync.")
      }
    }).then(() => console.log("[Companion]", "Service worker registered!"));
}
