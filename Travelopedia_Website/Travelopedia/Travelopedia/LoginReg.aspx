<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginReg.aspx.cs" Inherits="Travelopedia.LoginReg" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
        src="https://kit.fontawesome.com/64d58efce2.js"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="LoginReg.css" />
    <title>Sign in & Sign up Form</title>
</head>
<body>
    <div class="container">
        <div class="forms-container">
            <form id="Form1" action="#" class="signin-signup" runat="server">
                <section class="sign-in-form">
                    <h2 class="title">Sign in</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <asp:TextBox
                            ID="loginemail"
                            runat="server"
                            placeholder="Email"
                            CssClass="input-field-input"></asp:TextBox>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <asp:TextBox
                            ID="loginpass"
                            runat="server"
                            placeholder="Password"
                            CssClass="input-field-input" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Button
                        ID="Loginbutton"
                        runat="server"
                        Text="Sign In"
                        CssClass="btn" OnClick="Loginbutton_Click" />
                    <p class="social-text">Or Sign in with social platforms</p>
                    <div class="social-media">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-google"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                    </div>
                </section>
                <section class="sign-up-form">
                    <h2 class="title">Sign up</h2>
                    <div class="float-container">
                        <div class="input-field-side">
                            <i class="fas fa-user"></i>
                            <asp:TextBox
                                ID="firstname"
                                runat="server"
                                placeholder="First Name"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstname" ErrorMessage="!"></asp:RequiredFieldValidator>--%>
                        </div>
                        <div class="input-field-side">
                            <i class="fas fa-user"></i>
                            <asp:TextBox
                                ID="lastname"
                                runat="server"
                                placeholder="Last Name"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastname" ErrorMessage="!"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <asp:TextBox
                            ID="email"
                            runat="server"
                            placeholder="Email"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="!"></asp:RequiredFieldValidator>--%>
                        <%--<br />--%>
                        <%--<asp:RegularExpressionValidator ID="emailvalid1" runat="server" ControlToValidate="email" ErrorMessage="Not a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <asp:TextBox
                            ID="pass"
                            runat="server"
                            placeholder="Password" TextMode="Password"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pass" ErrorMessage="!"></asp:RequiredFieldValidator>--%>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <asp:TextBox
                            ID="conpass"
                            runat="server"
                            placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="conpass" ErrorMessage="!"></asp:RequiredFieldValidator>--%>
                        <%--<br />--%>
                        <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="conpass" ErrorMessage="Both passwords must be same"></asp:CompareValidator>--%>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-calendar-alt"></i>
                        <asp:TextBox
                            ID="DOB"
                            runat="server"
                            placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DOB" ErrorMessage="!"></asp:RequiredFieldValidator>--%>
                    </div>
                    <div class="float-container">
                        <!-- <label for="cars">Choose a car:</label> -->
                        <asp:DropDownList
                            ID="country"
                            runat="server"
                            CssClass="dropdown">
                            <asp:ListItem Value="Select Country" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Bangladesh" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="India" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Nepal" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Bhutan" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Maldives" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Pakistan" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Afghanistan" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Malaysia" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Indonesia" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Thailand" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Sri Lanka" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="France" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Germany" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Hungary" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Italy" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="England" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Scotland" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="USA" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Australia" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Russia" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="China" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="South Korea" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Vietnam" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Laos" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Japan" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Mexico" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Philipines" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Canada" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Greenland" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Iceland" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Spain" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Mongolia" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Uzbekistaan" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Russia" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Singapur" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Fiji" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Norway" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="South Africa" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Monaco" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Ghana" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Egypt" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Namibia" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Morocco" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Netharlands" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Greece" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Sweden" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Denmark" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Austria" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Croatia" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Romania" CssClass="dropdown_input"></asp:ListItem>
                        </asp:DropDownList>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="country" ErrorMessage="!" InitialValue="Select Country"></asp:RequiredFieldValidator>--%>
                        <asp:DropDownList ID="gender" runat="server" CssClass="dropdown">
                            <asp:ListItem Value="Select Gender" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Female" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Male" CssClass="dropdown_input"></asp:ListItem>
                            <asp:ListItem Value="Other" CssClass="dropdown_input"></asp:ListItem>
                        </asp:DropDownList>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="gender" ErrorMessage="!" InitialValue="Select Gender"></asp:RequiredFieldValidator>--%>
                    </div>
                    <asp:Button
                        ID="submitreg"
                        runat="server"
                        Text="Sign Up"
                        CssClass="btn" OnClick="submitreg_Click" />
                </section>
            </form>
        </div>

        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here ?</h3>
                    <p>
                        “I am not the same, having seen the moon shine on the other side
              of the world” – Mary Anne Radmacher
                    </p>
                    <button class="btn transparent" id="sign-up-btn">Sign up</button>
                </div>
                <img src="Images/undraw_journey_lwlj.svg" class="image" alt="" />
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>One of us ?</h3>
                    <p>
                        “Traveling – it leaves you speechless, then turns you into a
              storyteller” – Ibn Battuta
                    </p>
                    <button class="btn transparent" id="sign-in-btn">Sign in</button>
                </div>
                <img src="Images/undraw_adventure_-4-hum.svg" class="image" alt="" />
            </div>
        </div>
    </div>
    <script src="LoginReg.js"></script>
</body>
</html>
