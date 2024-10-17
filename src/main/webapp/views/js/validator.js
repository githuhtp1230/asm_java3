function validator(options) {
    let selectorRules = {};

    function handleInputElementOnBlurAndOnInputEvent(inputElement, rule) {
        inputElement.onblur = () => {
            validate(inputElement, rule);
        };

        inputElement.oninput = () => {
            getParent(inputElement).classList.remove("invalid");
            let declareErrorMessageNode = getParent(inputElement).querySelector(
                options.errorMessage
            );
            declareErrorMessageNode.innerText = "";
        };
    }

    function addRuleTestToSelectorArray(rule) {
        if (Array.isArray(selectorRules[rule.selector])) {
            selectorRules[rule.selector].push(rule.test);
        } else {
            selectorRules[rule.selector] = [rule.test];
        }
    }

    function getAllInputsData() {
        let enableInputs = formElement.querySelectorAll("[name]:not([disabled])");
        // đưa elementInput vào một object
        let formValues = Array.from(enableInputs).reduce((acc, val) => {
            switch (val.type) {
                case "checkbox":
                    if (!Array.isArray(acc[val.name])) {
                        acc[val.name] = [];
                    }
                    if (val.checked) {
                        acc[val.name].push(val.value);
                    }
                    break;
                case "radio":
                    if (val.checked) {
                        acc[val.name] = val.value;
                    }
                    break;
                case "file":
                    acc[val.name] = val.files;
                    break;
                default:
                    acc[val.name] = val.value;
                    break;
            }
            return acc;
        }, {});

        return formValues;
    }

    function displayErrorMessage(inputElement, errorMessage) {
        let declareErrorMessageNode = getParent(
            inputElement,
            options.formGroup
        ).querySelector(options.errorMessage);

        if (errorMessage) {
            declareErrorMessageNode.innerText = errorMessage;
            getParent(inputElement).classList.add("invalid");
        } else {
            declareErrorMessageNode.innerText = "";
        }
    }

    function getParent(element) {
        let classList = element.classList;
        if (classList && classList.contains(options.formGroup)) {
            return element;
        } else {
            return getParent(element.parentElement);
        }
    }

    function validate(inputElement, rule) {
        var errorMessage;
        // lấy ra các rules của selector
        let rulesInputElement = selectorRules[rule.selector];

        // lọc qua từng rulesInputElement và kiểm tra
        // nếu có lỗi thì dừng việc kiểm tra
        for (let i = 0; i < rulesInputElement.length; i++) {
            switch (inputElement.type) {
                case "checkbox":
                case "radio": {
                    errorMessage = rulesInputElement[i](
                        formElement.querySelector(rule.selector + ":checked")
                    );
                    break;
                }
                default: {
                    errorMessage = rulesInputElement[i](inputElement.value);
                    break;
                }
            }
            if (errorMessage) {
                break;
            }
        }

        displayErrorMessage(inputElement, errorMessage);

        return !errorMessage;
    }

    var formElement = document.querySelector(options.form);

    if (formElement) {
        // khi submit form
        formElement.onsubmit = (e) => {
            e.preventDefault();

            var isFormValid = true;

            options.rules.forEach((rule) => {
                let inputElement = formElement.querySelector(rule.selector);

                let isValid = validate(inputElement, rule);
                if (!isValid) {
                    isFormValid = false;
                }
            });

            if (isFormValid) {
                let formValues = getAllInputsData();
                options.onsubmit(formValues);
                console.log(formElement.querySelector(".form-submit"));
                formElement.submit();
            } else {
                let formValues = getAllInputsData();
                options.onsubmit(formValues);
            }
        };

        // xử lí lặp qua mỗi rule
        options.rules.forEach((rule) => {
            // thêm từng rule vào một mảng array tương ứng tùy vào selector
            addRuleTestToSelectorArray(rule);

            let inputElements = formElement.querySelectorAll(rule.selector);

            Array.from(inputElements).forEach((inputElement) => {
                if (inputElement) {
                    handleInputElementOnBlurAndOnInputEvent(inputElement, rule);
                }
            });
        });
    }
}

validator.isRequired = (selector) => {
    return {
        selector: selector,
        test: (value) => {
            return value ? undefined : "Vui lòng nhập trường này";
        },
    };
};

validator.isEmail = (selector) => {
    return {
        selector: selector,
        test: (value) => {
            let regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value) ? undefined : "Email không hợp lệ";
        },
    };
};

validator.minLength = (selector, min = 6) => {
    return {
        selector: selector,
        test: (value) => {
            return value.length >= min
                ? undefined
                : `Vui lòng nhập tối thiểu ${min} kí tự`;
        },
    };
};

validator.isConfirmed = (selector, getConfirmValue) => {
    return {
        selector: selector,
        test: (value) => {
            return value === getConfirmValue()
                ? undefined
                : "Giá trị nhập vào không chính xác";
        },
    };
};
