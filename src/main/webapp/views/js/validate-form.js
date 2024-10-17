validator({
    errorMessage: ".form-message",
    form: "#form-dang-ky",
    formGroup: "form-group",
    rules: [
        validator.isRequired("#fullname"),
        validator.isRequired("#email"),
        validator.isEmail("#email"),
        validator.isRequired("#password"),
        validator.minLength("#password", 3),
        validator.isRequired("#password_confirmation"),
        validator.isConfirmed("#password_confirmation", () => {
            return document.querySelector("#form-dang-ky #password").value;
        })
    ],
    onsubmit: function (data) {
        console.log(data);
    },
});

validator({
    errorMessage: ".form-message",
    form: "#form-dang-nhap",
    formGroup: "form-group",
    rules: [
        validator.isRequired("#fullname-signin"),
        validator.isRequired("#email-signin"),
        validator.isEmail("#email-signin"),
        validator.isRequired("#password-signin"),
        validator.minLength("#password-signin", 3),
        validator.isRequired("#password_confirmation"),
    ],
    onsubmit: function (data) {
        console.log(data);
    },
});

