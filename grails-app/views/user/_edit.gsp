<div class="panel panel-default ">

    <div class="panel-heading" id="head">Register</div>

    <div class="panel-body body" margin="10px 10px 10px 10px">
        <g:form controller="user" name="updateInfoForm" action="updateProfile"
                class="form-horizontal custom-box reg-form" enctype="multipart/form-data">
            <div class="form-group">
                <div class="col-xs-5"><label class="control-label">First Name<sup>*</sup></label></div>

                <div class="col-xs-7 "><g:textField id="firstName" name="firstName"
                                                    class="col-xs-7 form-control form-register-field"></g:textField>
                </div>
            </div>

            <div class="form-group">
                <div class="col-xs-5"><label class="control-label">Last Name<sup>*</sup></label></div>

                <div class="col-xs-7"><g:textField id="lastName" name="lastName"
                                                   class="col-xs-7 form-control form-register-field"></g:textField></div>
            </div>


            <div class="form-group">
                <div class="col-xs-5"><label class="control-label">Username<sup>*</sup></label></div>

                <div class="col-lg-7"><g:textField name="username" id="username"
                                                   class="form-control form-register-field"></g:textField>
                </div></div>


            <div class="form-group">
                <div class="col-xs-5"><label class="control-label">Profile Picture<sup>*</sup></label></div>

                <div class="col-xs-7"><input type="file" name="file" value="Browse"/>
                </div></div>


            <div class="form-group">
                <g:submitButton controller="user" action="updateProfile" value="Register"
                                class="btn form-btn register-btn col-xs-6 col-xs-offset-3 "
                                name="submit"></g:submitButton></div>
        </g:form>

    </div>
</div>


    <div class="panel panel-default ">

        <div class="panel-heading" id="headchange">Register</div>

        <div class="panel-body body" margin="10px 10px 10px 10px">

            <g:form controller="user" name="changePasswordForm" action="updatePassword" class="custom-box  reg-form">

                <div class="col-xs-5"><label class="control-label">Password<sup>*</sup></label></div>
                <g:passwordField name="password" class="form-control form-register-field"></g:passwordField>

                <div class="col-xs-5"><label class="control-label">Confirm Password<sup>*</sup></label></div>
                <g:passwordField name="confirmPassword" class="form-control form-register-field"></g:passwordField>
<br>
                <g:submitButton value="Submit" id="check" class="btn submit-btn form-btn col-xs-5"
                                name="submit"></g:submitButton>

            </g:form>
            <div id='my-alert'></div>

</div>
        </div>

















