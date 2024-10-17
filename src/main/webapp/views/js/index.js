document.querySelector(".register").addEventListener("click", function () {
    document.querySelector(".form__container--dangky").style.display = "flex";
})

document.querySelector(".signin").addEventListener("click", function () {
    document.querySelector(".form__container--dangnhap").style.display = "flex";
})

let formElements = document.querySelectorAll(".form__container");
for (let i of formElements) {
    let form = i.querySelector(".form");
    i.addEventListener("click", function (e) {
        if (window.getComputedStyle(i).display === "flex" && e.target.classList.contains("form__container")) {
            i.style.display = "none";
        }
    });
}