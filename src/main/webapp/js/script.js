const forms = document.querySelector(".forms"),
      pwShowHide = document.querySelectorAll(".eye-icon"),
      links = document.querySelectorAll(".link");

pwShowHide.forEach(eyeIcon => {
    eyeIcon.addEventListener("click", () => {
        let pwFields = eyeIcon.parentElement.parentElement.querySelectorAll(".password");
        
        pwFields.forEach(password => {
            if(password.type === "password"){
                password.type = "text";
                eyeIcon.classList.replace("bx-hide", "bx-show");
                return;
            }
            password.type = "password";
            eyeIcon.classList.replace("bx-show", "bx-hide");
        })
        
    })
})      

links.forEach(link => {
    link.addEventListener("click", e => {
       e.preventDefault(); //preventing form submit
       forms.classList.toggle("show-signup");
    })
})

document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("admissionForm");

    form.addEventListener("submit", function (event) {
        const firstName = document.getElementById("firstName").value;
        const lastName = document.getElementById("lastName").value;
        const email = document.getElementById("email").value;
        const phone = document.getElementById("phone").value;
        const dob = document.getElementById("dob").value;
        const gender = document.getElementById("gender").value;
        const address = document.getElementById("address").value;
        const course = document.getElementById("course").value;
        const semester = document.getElementById("semester").value;

        if (!firstName || !lastName || !email || !phone || !dob || !gender || !address || !course || !semester) {
            event.preventDefault();
            alert("Please fill in all the required fields.");
        }
    });
});
