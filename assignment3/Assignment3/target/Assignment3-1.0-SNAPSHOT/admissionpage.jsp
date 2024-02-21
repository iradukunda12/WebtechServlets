<%--
  Created by IntelliJ IDEA.
  User: kevin
  Date: 2/17/24
  Time: 9:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Karla:400,700&display=swap');

        .font-family-karla {
            font-family: karla;
        }

    </style>
</head>
<body class="bg-white font-family-karla h-screen">


<%

    if(session.getAttribute("email") == null) {
        response.sendRedirect("index.jsp");
    }

%>

<h3>${email}</h3>

<div class="w-full flex flex-wrap">

    <!-- Register Section -->
    <div class="w-full md:w-1/2 flex flex-col">

        <div class="flex justify-center md:justify-start pt-12 md:pl-12 md:-mb-12">
            <a href="#" class="bg-black text-white font-bold text-xl p-4" alt="Logo">Logo</a>
        </div>

        <div class="flex flex-col justify-center md:justify-start my-auto pt-8 md:pt-0 px-8 md:px-24 lg:px-32">
            <p class="text-center text-3xl">Welcome to Our Admission application Page.</p>
            <form class="flex flex-col pt-3 md:pt-8" action="UserVerify" method="post">
                <div class="flex flex-col pt-4">
                    <label for="name" class="text-lg">Name</label>
                    <input type="text" name="name" id="name" placeholder="John Smith" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline" />
                    <div class="error-message"></div>
                </div>

                <div class="flex flex-col pt-4">
                    <label for="email" class="text-lg">Email</label>
                    <input type="email" name="email" id="email" placeholder="your@email.com" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline" />
                    <div class="error-message"></div>
                </div>

                <div class="flex flex-col pt-4">
                    <label  class="text-lg">Department</label>
                    <input type="Text" name="department" id="department" placeholder="Department" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline" />
                    <div class="error-message"></div>
                </div>

                <div class="flex flex-col pt-4">
                    <label for="" class="text-lg">Faculty</label>
                    <input type="text" name="faculty" id="Faculty" placeholder="Faculty" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline" />
                    <div class="error-message"></div>
                </div>
                <div class="flex flex-col pt-4">
                    <label for="" class="text-lg">Photo</label>
                    <input type="file" name="photo" id="photo" placeholder="Photo" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline" />
                    <div class="error-message"></div>
                </div>
                <div class="flex flex-col pt-4">
                    <label for="" class="text-lg">Diploma</label>
                    <input type="file" name="photo" id="diploma" placeholder="diploma" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline" />
                    <div class="error-message"></div>
                </div>

                <input type="submit" value="Register" class="bg-black text-white font-bold text-lg hover:bg-gray-700 p-2 mt-8" />
            </form>
            <div class="text-center pt-12 pb-12">
<%--                <p>Already have an account? <a href="index.jsp" class="underline font-semibold">Register for Admission in here.</a></p>--%>
            </div>
        </div>

    </div>

    <!-- Image Section -->
    <div class="w-1/2 shadow-2xl">
        <img class="object-cover w-full h-screen hidden md:block" src="https://source.unsplash.com/IXUM4cJynP0" alt="Background" />
    </div>
</div>

<%--<script>--%>
<%--    document.addEventListener("DOMContentLoaded", function () {--%>
<%--        document.querySelector("form").addEventListener("submit", function (event) {--%>
<%--            // Validation for Name--%>
<%--            const nameInput = document.getElementById("name");--%>
<%--            if (nameInput.value.trim() === "") {--%>
<%--                displayErrorMessage(nameInput, "Please enter your name.");--%>
<%--                event.preventDefault();--%>
<%--                return;--%>
<%--            }--%>

<%--            // Validation for Email--%>
<%--            const emailInput = document.getElementById("email");--%>
<%--            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;--%>
<%--            if (!emailRegex.test(emailInput.value)) {--%>
<%--                displayErrorMessage(emailInput, "Please enter a valid email address.");--%>
<%--                event.preventDefault();--%>
<%--                return;--%>
<%--            }--%>

<%--            // Validation for Department--%>
<%--            const departmentInput = document.getElementById("department");--%>
<%--            if (departmentInput.value.trim() === "") {--%>
<%--                displayErrorMessage(departmentInput, "Please enter your department.");--%>
<%--                event.preventDefault();--%>
<%--                return;--%>
<%--            }--%>

<%--            // Validation for Faculty--%>
<%--            const facultyInput = document.getElementById("Faculty");--%>
<%--            if (facultyInput.value.trim() === "") {--%>
<%--                displayErrorMessage(facultyInput, "Please enter your faculty.");--%>
<%--                event.preventDefault();--%>
<%--                return;--%>
<%--            }--%>

<%--            // Validation for Photo--%>
<%--            const photoInput = document.getElementById("photo");--%>
<%--            const allowedImageExtensions = ["jpg", "png"];--%>
<%--            const photoFileName = photoInput.value.toLowerCase();--%>
<%--            const photoFileExtension = photoFileName.split(".").pop();--%>
<%--            if (!allowedImageExtensions.includes(photoFileExtension)) {--%>
<%--                displayErrorMessage(photoInput, "Please upload a photo with a JPG or PNG extension only.");--%>
<%--                event.preventDefault();--%>
<%--                return;--%>
<%--            }--%>

<%--            // Validation for Diploma--%>
<%--            const diplomaInput = document.getElementById("diploma");--%>
<%--            const allowedPdfExtensions = ["pdf"];--%>
<%--            const diplomaFileName = diplomaInput.value.toLowerCase();--%>
<%--            const diplomaFileExtension = diplomaFileName.split(".").pop();--%>
<%--            if (!allowedPdfExtensions.includes(diplomaFileExtension)) {--%>
<%--                displayErrorMessage(diplomaInput, "Please upload a diploma in PDF format only.");--%>
<%--                event.preventDefault();--%>
<%--                return;--%>
<%--            }--%>

<%--            // If all validations pass, submit the form--%>
<%--            this.submit();--%>
<%--        });--%>

<%--        function displayErrorMessage(inputElement, message) {--%>
<%--            const errorContainer = inputElement.nextElementSibling;--%>
<%--            if (errorContainer && errorContainer.classList.contains("error-message")) {--%>
<%--                errorContainer.textContent = message;--%>
<%--            } else {--%>
<%--                const newErrorContainer = document.createElement("div");--%>
<%--                newErrorContainer.className = "error-message text-red-500";--%>
<%--                newErrorContainer.textContent = message;--%>
<%--                inputElement.parentNode.insertBefore(newErrorContainer, inputElement.nextSibling);--%>
<%--            }--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        document.querySelector("form").addEventListener("submit", function (event) {
            // Validation for Name
            const nameInput = document.getElementById("name");
            if (nameInput.value.trim() === "") {
                displayErrorMessage(nameInput, "Please enter your name.", false);
                event.preventDefault();
                return;
            } else {
                displayErrorMessage(nameInput, "Name is valid.", true);
            }

            // Validation for Email
            const emailInput = document.getElementById("email");
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(emailInput.value)) {
                displayErrorMessage(emailInput, "Please enter a valid email address.", false);
                event.preventDefault();
                return;
            } else {
                displayErrorMessage(emailInput, "Email is valid.", true);
            }

            // Validation for Department
            const departmentInput = document.getElementById("department");
            if (departmentInput.value.trim() === "") {
                displayErrorMessage(departmentInput, "Please enter your department.", false);
                event.preventDefault();
                return;
            } else {
                displayErrorMessage(departmentInput, "Department is valid.", true);
            }

            // Validation for Faculty
            const facultyInput = document.getElementById("Faculty");
            if (facultyInput.value.trim() === "") {
                displayErrorMessage(facultyInput, "Please enter your faculty.", false);
                event.preventDefault();
                return;
            } else {
                displayErrorMessage(facultyInput, "Faculty is valid.", true);
            }

            // Validation for Photo
            const photoInput = document.getElementById("photo");
            const allowedImageExtensions = ["jpg", "jpeg", "png"];
            const photoFileName = photoInput.value.toLowerCase();
            const photoFileExtension = photoFileName.split(".").pop();
            if (!allowedImageExtensions.includes(photoFileExtension)) {
                displayErrorMessage(photoInput, "Please upload a photo with a JPG or PNG extension only.", false);
                event.preventDefault();
                return;
            } else {
                displayErrorMessage(photoInput, "Photo is valid.", true);
            }

            // Validation for Diploma
            const diplomaInput = document.getElementById("diploma");
            const allowedPdfExtensions = ["pdf"];
            const diplomaFileName = diplomaInput.value.toLowerCase();
            const diplomaFileExtension = diplomaFileName.split(".").pop();
            if (!allowedPdfExtensions.includes(diplomaFileExtension)) {
                displayErrorMessage(diplomaInput, "Please upload a diploma in PDF format only.", false);
                event.preventDefault();
                return;
            } else {
                displayErrorMessage(diplomaInput, "Diploma is valid.", true);
            }

            // If all validations pass, submit the form
            this.submit();
        });

        function displayErrorMessage(inputElement, message, isSuccess) {
            const errorContainer = inputElement.nextElementSibling;
            if (errorContainer && errorContainer.classList.contains("error-message")) {
                errorContainer.textContent = message;
                errorContainer.style.color = isSuccess ? "green" : "red";
            } else {
                const newErrorContainer = document.createElement("div");
                newErrorContainer.className = "error-message";
                newErrorContainer.textContent = message;
                newErrorContainer.style.color = isSuccess ? "green" : "red";
                inputElement.parentNode.insertBefore(newErrorContainer, inputElement.nextSibling);
            }
        }
    });
</script>





</body>
</html>