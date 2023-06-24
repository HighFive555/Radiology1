<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Radiology1.Edit" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <br />
    </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="nav-justified" style="border: 1px double #FFFFFF; width: 114%; height: 493px; margin-right: 69px">
        <tr>
            <td class="text-center" style="border-style: double; border-color: #A1CAE9; padding: 0px; height: 4px; width: 405px;"> <strong>
                <asp:Label ID="Label1" runat="server" style="color: #627A96; font-size: large; margin-right: 56px; margin-bottom: 0px;" Text="Request ID" Height="26px" Width="150px"></asp:Label>
                </strong></td>
            <td class="text-center" style="border-style: double; border-color: #A1CAE9; padding: 0px; height: 4px; width: 453px;">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#F7F6F3" BorderStyle="None" Height="25px" Width="411px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;</td>
            <td class="text-center" style="background-color: #F7F6F3; width: 534px; height: 4px;">&nbsp;</td>
            <td class="text-center" style="background-color: #F7F6F3; width: 1435px; height: 4px;"></td>
            <td class="text-center" style="background-color: #F7F6F3; height: 4px;">&nbsp;</td>
            <td class="text-center" style="background-color: #F7F6F3; height: 4px;"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 405px"></td>
            <td style="height: 20px; width: 453px;"></td>
            <td style="background-color: #F7F6F3; width: 534px; height: 20px;"></td>
            <td style="background-color: #F7F6F3; width: 1435px; height: 20px;"></td>
            <td style="background-color: #F7F6F3; height: 20px;"></td>
            <td style="background-color: #F7F6F3" rowspan="12">
                <br />
                <span style="font-size: medium; color: #627A96"><strong>Comments</strong></span><strong><br />
                <asp:TextBox ID="TextBox15" runat="server" BorderColor="#627A96" BorderStyle="Groove" BorderWidth="4px" Height="333px" Width="361px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp; <asp:Button ID="Button8" runat="server" BackColor="#627A96" BorderColor="#CCCCCC" CssClass="auto-style25" Height="30px" Text="Add" Width="120px" OnClick="Button8_Click" style="font-weight: bold; color: #FFFFFF" />
&nbsp;&nbsp; <asp:Button ID="Button9" runat="server" BackColor="#627A96" BorderColor="#CCCCCC" CssClass="auto-style25" Height="30px" Text="Back" Width="120px" OnClick="Button9_Click" style="font-weight: bold; color: #FFFFFF" />
                </strong></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 405px">&nbsp;</td>
            <td style="height: 20px; width: 453px;">&nbsp;</td>
            <td style="background-color: #F7F6F3; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3; width: 1435px;">&nbsp;</td>
            <td style="background-color: #F7F6F3">&nbsp;</td>
        </tr>
         <tr>
            <td class="text-left" colspan="2" style="border-style: ridge; border-color: #627A96; background-color: #C8D8E4; height: 33px;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #F0F0F0"><span style="font-size: medium"><em>Patient Data</em></span></span></strong></td>
            <td class="text-left" style="background-color: #F7F6F3; width: 534px; height: 33px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="text-left" style="background-color: #F7F6F3; width: 1435px;" rowspan="9">
                <asp:Image ID="Image3" runat="server" BorderColor="#627A96" BorderStyle="Groove" BorderWidth="5px" Height="349px" style="margin-right: 0px; margin-top: 0px" Width="453px" />
            </td>
            <td class="text-left" style="background-color: #F7F6F3; height: 33px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr style="background-color: #C8D8E4">
            <td class="text-center" style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 405px;"><strong>Patient ID</strong></td>
            <td style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 453px;" class="modal-sm">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#C8D8E4" BorderStyle="None" Height="25px" Width="433px"></asp:TextBox>
            </td>
            <td style="background-color: #F7F6F3; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 405px;"><strong>Patient Name</strong></td>
            <td style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 453px;" class="modal-sm">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#C8D8E4" BorderStyle="None" Height="25px" Width="433px"></asp:TextBox>
            </td>
            <td style="background-color: #F7F6F3; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 405px;"><strong>Age</strong></td>
            <td style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 453px;" class="modal-sm">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#C8D8E4" BorderStyle="None" Height="25px" Width="433px"></asp:TextBox>
            </td>
            <td style="background-color: #F7F6F3; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 405px;"><strong>Gender</strong></td>
            <td style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 453px;" class="modal-sm">
                <asp:TextBox ID="TextBox12" runat="server" BackColor="#C8D8E4" BorderStyle="None" Height="25px" Width="433px"></asp:TextBox>
            </td>
            <td style="background-color: #F7F6F3; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 405px;"><strong>Dentist</strong></td>
            <td style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 453px;" class="modal-sm">
                <asp:TextBox ID="TextBox6" runat="server" BackColor="#C8D8E4" BorderStyle="None" Height="25px" Width="433px"></asp:TextBox>
            </td>
            <td style="background-color: #F7F6F3; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="border: 2px ridge #495B70; background-color: #C8D8E4; height: 34px; width: 405px;"><strong>Modality</strong></td>
            <td style="border: 2px ridge #495B70; background-color: #C8D8E4; height: 34px; width: 453px;">
                <asp:TextBox ID="TextBox7" runat="server" BackColor="#C8D8E4" BorderStyle="None" Height="25px" Width="476px"></asp:TextBox>
            </td>
            <td style="background-color: #F7F6F3; height: 34px; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3; height: 34px;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 405px;"><strong style="border-style: hidden">Region</strong></td>
            <td style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 453px;" class="modal-sm">
                <asp:TextBox ID="TextBox8" runat="server" BackColor="#C8D8E4" BorderStyle="None" Height="25px" Width="433px"></asp:TextBox>
            </td>
            <td style="background-color: #F7F6F3; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 405px;"><strong>Status</strong></td>
            <td style="border: 2px ridge #495B70; background-color: #C8D8E4; width: 453px;" class="modal-sm">
                <asp:TextBox ID="TextBox9" runat="server" BackColor="#C8D8E4" BorderStyle="None" Height="25px" Width="433px"></asp:TextBox>
            </td>
            <td style="background-color: #F7F6F3; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3">&nbsp;</td>
        </tr>
         <tr>
            <td class="modal-sm" style="width: 405px">&nbsp;</td>
            <td class="modal-sm" style="width: 453px">&nbsp;</td>
            <td style="background-color: #F7F6F3; width: 534px;">&nbsp;</td>
            <td style="background-color: #F7F6F3; width: 1435px;" class="text-left">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="457px" Font-Bold="True" ForeColor="#627A96" Height="30px" style="font-size: medium" />
             </td>
            <td style="background-color: #F7F6F3; color: #627A96; font-size: large;" class="text-center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 405px; height: 29px;"></td>
            <td class="modal-sm" style="width: 453px; height: 29px"></td>
            <td style="width: 534px; height: 29px;">&nbsp;</td>
            <td style="width: 1435px; height: 29px;">
                <asp:Label ID="Label2" runat="server" style="color: #627A96"></asp:Label>
            </td>
            <td style="height: 29px">
                &nbsp;</td>
            <td style="height: 29px">
                <asp:TextBox ID="TextBox11" runat="server" BackColor="#F7F6F3" BorderStyle="None" Height="25px" Width="433px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p style="width: 1220px; height: 119px">
        &nbsp;</p>

</asp:Content>