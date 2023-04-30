// smooth scrolling for navbar links
const navLinks = document.querySelectorAll(".navbar a");
for (const link of navLinks) {
  link.addEventListener("click", clickHandler);
}

function clickHandler(event) {
  event.preventDefault();
  const href = this.getAttribute("href");
  const offsetTop = document.querySelector(href).offsetTop;

  scroll({
    top: offsetTop,
    behavior: "smooth"
  });
}

// slideshow for featured events
const slides = document.querySelectorAll(".event-card");
const intervalTime = 5000;
let slideInterval;

const nextSlide = () => {

  const currentSlide = document.querySelector(".current");

  currentSlide.classList.remove("current");

  if (currentSlide.nextElementSibling) {

    currentSlide.nextElementSibling.classList.add("current");
  } else {

    slides[0].classList.add("current");
  }

  setTimeout(() => currentSlide.classList.remove("current"));
};


slideInterval = setInterval(nextSlide, intervalTime);


const slideshow = document.querySelector("#featured-events");
slideshow.addEventListener("mouseenter", () => {
  clearInterval(slideInterval);
});
slideshow.addEventListener("mouseleave", () => {
  slideInterval = setInterval(nextSlide, intervalTime);
});

const loginBtn = document.querySelector('.btn-login');
const signupBtn = document.querySelector('.btn-signup');

loginBtn.addEventListener('click', () => {

  console.log('Login button clicked');
});

signupBtn.addEventListener('click', () => {

  console.log('Sign Up button clicked');
});

const searchInput = document.querySelector('.search-bar');
const searchButton = document.querySelector('.search-button');

searchButton.addEventListener('click', function () {
  const searchTerm = searchInput.value.toLowerCase();
  const events = document.querySelectorAll('.event-card');

  events.forEach(event => {
    const title = event.querySelector('h3').textContent.toLowerCase();
    const date = event.querySelector('p').textContent.toLowerCase();

    if (title.includes(searchTerm) || date.includes(searchTerm)) {
      event.style.display = 'block';
    } else {
      event.style.display = 'none';
    }
  });
});

new Typewriter("#typewriter", {
  strings: ["Comedy","Clubbing","Cricket","Food Fest","and Much More"],
  autoStart: true,
});

function clickHandler(event) {
  event.preventDefault();
  const href = this.getAttribute("href");
  if (href.startsWith("http")) {
    window.open(href, "_blank");
  } else {
    window.location.href = href;
  }
}