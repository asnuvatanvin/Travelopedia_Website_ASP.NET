<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Travelopedia.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="table.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center;">Admin Page</h1>
         <h2>Tour Package Data Update</h2>
    <div class="formm" style="padding-left:35%;">  
       
        <asp:TextBox ID="pname" runat="server" Text="Destination"></asp:TextBox>
        <asp:TextBox ID="price" runat="server" Text="Price"></asp:TextBox>
        <asp:TextBox ID="descrip" runat="server" Text="Description"></asp:TextBox>
    <asp:FileUpload ID="fileupload" runat="server" />  
        <br />  
        <asp:Button ID="upload" runat="server" Font-Bold="true" Text="Upload" OnClick="upload_Click" />  
        <br />  
        <br />  
    </div>  
    <div>
       
    </div>
    <div>

    </div>
       
        <div class="table-wrapper">
             <asp:GridView runat="server" ID="gdImage"  AutoGenerateColumns="false" CssClass="fl-table">  
                <Columns >  
                    <asp:BoundField DataField="tpid" HeaderText="Id" ItemStyle-CssClass="bodyc" HeaderStyle-CssClass="headc"/>  
                    <asp:BoundField DataField="pname" HeaderText="Place Name" ItemStyle-CssClass="bodyc" HeaderStyle-CssClass="headc"/>
                    <asp:BoundField DataField="price" HeaderText="Price" ItemStyle-CssClass="bodyc" HeaderStyle-CssClass="headc"/>
                    <asp:BoundField DataField="description" HeaderText="Description" ItemStyle-CssClass="bodyc" HeaderStyle-CssClass="headc"/>  
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image" HeaderStyle-CssClass="headc"><ControlStyle CssClass="bodyc" Height="300px" Width="400px" /></asp:ImageField>
                </Columns>  
            </asp:GridView>
        </div>

         <h2>Hotel Data Update</h2>

        <div class="table-wrapper">
             <asp:SqlDataSource ID="SqlDataSourceh" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Hotel]"></asp:SqlDataSource>
                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="false" CssClass="fl-table" DataSourceID="SqlDataSourceh">
                    <Columns>
                
                        <asp:BoundField DataField="Id" HeaderText="Hotel ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Name" HeaderText="Hotel Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Street" HeaderText="Address" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Description" HeaderText="Description" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>

        <div class="table-wrapper">
             <asp:SqlDataSource ID="SqlDataSourcehptelb" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Hotel_Booking]"></asp:SqlDataSource>
                <asp:GridView ID="hshow" runat="server" AutoGenerateColumns="false" CssClass="fl-table" DataSourceID="SqlDataSourcehptelb">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="UserID" HeaderText="User ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="User_Name" HeaderText="User Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Hotel_ID" HeaderText="Hotel ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Room_capacity" HeaderText="Person(s)" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="StartDate" HeaderText="Arrival Date" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="End_Date" HeaderText="Departure Date" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>
        <h2>Flight Data Update</h2>
       
        <div class="table-wrapper">
             <asp:SqlDataSource ID="SqlDataSourceflight" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Flight]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="fl-table" DataSourceID="SqlDataSourceflight">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Flight ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="airline_id" HeaderText="Airline ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="airline_name" HeaderText="Airline Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="total_seats" HeaderText="Total Seats" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>
        <div style="padding-left:40%">
            <asp:TextBox runat="server" ID="flightdel" Text="ID" ></asp:TextBox>
            <asp:LinkButton ID="fdelb" runat="server" Text="Delete" CssClass="tbb" Onclick="fdelbb_Click"></asp:LinkButton>
        </div>
        <div class="table-wrapper">
            <asp:SqlDataSource ID="SqlDataSourcefdetails" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Flight_Details]"></asp:SqlDataSource>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CssClass="fl-table" DataSourceID="SqlDataSourcefdetails">
                    <Columns>
                        <asp:BoundField DataField="flight_id" HeaderText="Flight ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="departure_time" HeaderText="Departure Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="arrival_time" HeaderText="Arrival Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="from_loc" HeaderText="From" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="to_loc" HeaderText="To" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="duration" HeaderText="Duration" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="price" HeaderText="Price" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="available_seats" HeaderText="Available Seats" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>
         <div style="padding-left:35%;">
            <asp:TextBox runat="server" ID="idf" Text="ID"></asp:TextBox>
            <asp:TextBox runat="server" ID="fromf" Text="From"></asp:TextBox>
            <asp:TextBox runat="server" ID="tof" Text="To"></asp:TextBox>
            <asp:LinkButton ID="fdd" runat="server" Text="Delete" CssClass="tbb" OnClick="fdd_Click"></asp:LinkButton>
        </div>
        <div class="table-wrapper">
            <asp:SqlDataSource ID="SqlDataSourcefticket" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Flight_Ticket]"></asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" CssClass="fl-table" DataSourceID="SqlDataSourcefticket">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="UserID" HeaderText="User ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Username" HeaderText="User Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="flight_id" HeaderText="Flight ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="passengers" HeaderText="Passengers" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="departure_date" HeaderText="Departure Date" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="departure_time" HeaderText="Departure Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="from_loc" HeaderText="From" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="to_loc" HeaderText="To" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>

        <h2>Bus Data Update</h2>
       
        <div class="table-wrapper">
             <asp:SqlDataSource ID="SqlDataSourceBus" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Bus]"></asp:SqlDataSource>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="false" CssClass="fl-table" DataSourceID="SqlDataSourceBus">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Bus ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="company_id" HeaderText="Company ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="company_name" HeaderText="Company Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="total_seats" HeaderText="Total Seats" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>
        <div class="table-wrapper">
            <asp:SqlDataSource ID="SqlDataSourcebdetail" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Bus_Details]"></asp:SqlDataSource>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="false" CssClass="fl-table" DataSourceID="SqlDataSourcebdetail">
                    <Columns>
                        <asp:BoundField DataField="bus_id" HeaderText="Bus ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="departure_time" HeaderText="Departure Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="from_loc" HeaderText="From" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="to_loc" HeaderText="To" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="price" HeaderText="Price" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="available_seats" HeaderText="Available Seats" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>
        <div class="table-wrapper">
            <asp:SqlDataSource ID="SqlDataSourcebticket" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Bus_Ticket]"></asp:SqlDataSource>
                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="false" CssClass="fl-table" DataSourceID="SqlDataSourcebticket">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="UserID" HeaderText="User ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Username" HeaderText="User Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="bus_id" HeaderText="Bus ID" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="passengers" HeaderText="Passengers" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="departure_date" HeaderText="Departure Date" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="departure_time" HeaderText="Departure Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="from_loc" HeaderText="From" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="to_loc" HeaderText="To" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>

     
    </form>
</body>
</html>
