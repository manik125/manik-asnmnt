<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="response.aspx.cs" Inherits="XEx06Reservation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 6: Reservations</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <header class="jumbotron">
            <img src="Images/logo.png" alt="Royal Inns and Suites" />
        </header>

        <main>
            <form id="form2" runat="server" class="form-horizontal">
                <h1>Reservation Request</h1>

                <h3>Request data</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Arrival Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtArrivalDate" runat="server" TextMode="Date"
                             CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtArrivalDate" CssClass="alert-danger"
                            ErrorMessage="Please enter the arrival date"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Departure Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtDepartureDate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDepartureDate" CssClass="alert-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server"  ControlToValidate="txtDepartureDate" ErrorMessage="Must be after arrival date" CssClass="alert-danger" Display="Dynamic"></asp:CompareValidator>
                        <!-- text box -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Number of people</label>
                    <div class="col-sm-4">
                        <!-- drop-down -->
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                        
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Bed type</label>
                    <div class="col-sm-9 bedtype">
                        <!-- radio buttons -->
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="contactby" Text="King" />
                        <asp:RadioButton ID="RadioButton2" runat="server"  GroupName="contactby" Text="Two Queen" />
                        <asp:RadioButton ID="RadioButton3" runat="server"  GroupName="contactby" Text="One Queen" />
                    </div>
                </div>

                <h3>Special requests</h3>
                <div class="form-group">
                    <div class="col-sm-7">
                        <!-- multiline text box -->
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="200" Width="650"></asp:TextBox>
                    </div>
                </div>

                <h3>Contact information</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirstName" CssClass="alert-danger" ErrorMessage="Please enter the first name" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" CssClass="alert-danger" ErrorMessage="Please enter the last name" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" CssClass="alert-danger" ErrorMessage="Please enter an Email Address" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="alert-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Must be a valid Email Address" Display="Dynamic"></asp:RegularExpressionValidator>   
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Telephone number</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" CssClass="alert-danger" ErrorMessage="Please enter a phone number" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" CssClass="alert-danger" ValidationExpression="(\d{3}-\d{3}-\d{4})" ErrorMessage="Must be a valid phone number" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Preferred method</label>
                    <div class="col-sm-4">
                        <!-- drop down -->
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                            <asp:ListItem>Email</asp:ListItem>
                            <asp:ListItem>Phone</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>

                <%-- Submit and Clear buttons --%>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                             CssClass="btn btn-primary"  />
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                             CssClass="btn btn-primary"  />
                    </div>
                </div> 
            
                <%-- message label --%>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>

            </form>
        </main>

        <footer>
            <p>&copy; <asp:Label ID="lblYear" runat="server"></asp:Label> 
                Royal Inns and Suites</p>
        </footer>
    </div>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
