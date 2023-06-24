<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Radiology1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color: #F7F6F3; height: 689px;">
        </br>
        <div style="font-size:x-large; color: #5D7B9D;" align="center"> <strong>Requests Details </strong> </div>
        <table class="nav-justified">
            <tr>
                <td style="width: 72px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 72px">&nbsp;</td>
                <td class="text-justify">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Request_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="194px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="1275px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Request_ID" HeaderText="Request_ID" InsertVisible="False" ReadOnly="True" SortExpression="Request_ID" />
                            <asp:BoundField DataField="Patient_ID" HeaderText="Patient_ID" SortExpression="Patient_ID" />
                            <asp:BoundField DataField="Patient_Name" HeaderText="Patient_Name" SortExpression="Patient_Name" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                            <asp:BoundField DataField="Dentist_Name" HeaderText="Dentist_Name" SortExpression="Dentist_Name" />
                            <asp:BoundField DataField="Modality" HeaderText="Modality" SortExpression="Modality" />
                            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                            <asp:BoundField DataField="Clinic_Branch" HeaderText="Clinic_Branch" SortExpression="Clinic_Branch" />
                            <asp:CommandField SelectText="Edit" ShowSelectButton="True">
                            <ControlStyle ForeColor="#5D7B9D" />
                            </asp:CommandField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ERadiologyConnectionString %>" SelectCommand="SELECT * FROM [Patient_Rad]"></asp:SqlDataSource>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </br>
    </div>


</asp:Content>
