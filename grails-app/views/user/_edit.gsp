<head>
    <script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>

    <script>
        $(function () {
            $("#updateInfoForm").validate({
                rules: {
                    firstName: "required",
                    lastName: "required",
                    username: {
                        required:true,
                        remote: "${createLink(controller: 'user',action: 'isUsernameValid')}"
                    }
                },
// Specify the validation error messages
                messages: {
                    firstname: "Please enter your first name",
                    lastname: "Please enter your last name",
                    username: {
                        required:"Username Required",
                        remote: jQuery.validator.format("Username already exists")
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        });

            $(function () {
                $("#changePasswordForm").validate({
                    rules: {
                        password: {
                            required: true,
                            minlength: 5
                        },
                        confirmPassword: {
                            required: true,
                            minlength: 5
                        }
                    },
// Specify the validation error messages
                    messages: {
                        password: {
                            required: "Please provide a password",
                            minlength: "Your password must be at least 5 characters long"
                        }
                    },
                    submitHandler: function (form) {
                        form.submit();
                    }
                });
            });

        </script>

</head>



<div class="panel panel-default " style="padding:8px;border:10px inset yellowgreen;">

    <div class="panel-heading" id="head" style="border-bottom:3px;border:5px double green;">Register</div>

    <div class="panel-body body" margin="10px 10px 10px 10px">
        <g:form controller="user" name="updateInfoForm" action="updateProfile"
                class="form-horizontal custom-box reg-form" enctype="multipart/form-data">
            <div class="form-group">
                <div class="col-xs-5"><label class="control-label">First Name<sup>*</sup></label></div>

                <div class="col-xs-7 "><g:textField id="firstName" name="firstName"
                                                   value="${session.user.firstName}" class="col-xs-7 form-control form-register-field"></g:textField>
                </div>
            </div>

            <div class="form-group">
                <div class="col-xs-5"><label class="control-label">Last Name<sup>*</sup></label></div>

                <div class="col-xs-7"><g:textField id="lastName" name="lastName"
                                            value="${session.user.lastName}"   class="col-xs-7 form-control form-register-field"></g:textField></div>
            </div>


            <div class="form-group">
                <div class="col-xs-5"><label class="control-label">Username<sup>*</sup></label></div>

                <div class="col-lg-7"><g:textField name="username" id="username"
                                        value="${session.user.username}"     class="form-control form-register-field"></g:textField>
                </div></div>


            <div class="form-group">
                <div class="col-xs-5"><label class="control-label">Profile Picture<sup>*</sup></label></div>

                <div class="col-xs-7"><input type="file" name="file" value="Browse"/>
                </div></div>


            <div class="form-group">
                <g:submitButton controller="user" action="updateProfile" value="Register"
                                class="btn btn-success form-btn register-btn col-xs-6 col-xs-offset-3 "
                                name="submit"></g:submitButton></div>
        </g:form>

    </div>
</div>


    <div class="panel panel-default " style="padding:8px;border:10px inset yellowgreen;">

        <div class="panel-heading" id="headchange" style="border-bottom:3px;border:5px double green;">Change your password here</div>

        <div class="panel-body body" margin="10px 10px 10px 10px">

            <g:form controller="user" name="changePasswordForm" action="updatePassword" class="custom-box  reg-form">

                <div class="col-xs-5"><label class="control-label">Password<sup>*</sup></label></div>
                <g:passwordField name="password" class="form-control form-register-field"></g:passwordField>
<br><br>
                <div class="col-xs-5"><label class="control-label">Confirm Password<sup>*</sup></label></div>
                <g:passwordField name="confirmPassword" class="form-control form-register-field"></g:passwordField>
<br>
                <g:submitButton value="Submit" id="check" class="btn btn-success submit-btn form-btn col-xs-5"
                                name="submit"></g:submitButton>

            </g:form>
            <div id='my-alert'></div>

</div>
        </div>


















