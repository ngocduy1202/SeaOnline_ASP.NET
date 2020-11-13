﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_QLK.aspx.cs" Inherits="DoAn.Admin_QLK" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/QLK.css" rel="stylesheet" />
    <div>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Sync" />

        <br />

    </div>
    <div>
        <div id="main" style="position:relative">
        <div id="left">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="Mã Phiếu" DataField="MAPHIEU"/>
                    <asp:BoundField HeaderText="Loại Phiếu" DataField="LOAIPHIEU"/>
                    <asp:BoundField HeaderText="Mã Hàng" DataField="MAHANG"/>
                    <asp:BoundField HeaderText="Số Lượng" DataField="SOLUONG"/>                    
                    <asp:BoundField HeaderText="Ngày" DataField="NGAY" HtmlEncode="false" DataFormatString="{0:MM/dd/yyyy}" />
                    <asp:CommandField ButtonType="Button" DeleteText="Xoá" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
        <div id="right">
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="Mã Kho" DataField="MAKHO"/>
                    <asp:BoundField HeaderText="Mã Hàng" DataField="MAHANG"/>
                    <asp:BoundField HeaderText="Số Lượng" DataField="SOLUONG"/>                    
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
    </div>
    </div>
    <div>
        <asp:Button ID="Button2" runat="server" Text="Tạo Phiếu" OnClick="Button2_Click" />

        <br />
        <asp:Panel ID="Panel1" Visible="false" runat="server" Width="600px">
            <table style="500px">
            <%--<tr>
                <td>Mã phiếu</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>                
            </tr>--%>
            <tr>
                <td>Loại phiếu</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="Nhập">Nhập</asp:ListItem>
                        <asp:ListItem Value="Xuất">Xuất</asp:ListItem>
                    </asp:DropDownList>
                </td>                
            </tr>
            <tr>
                <td>Mã hàng</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="MAHANG" DataValueField="MAHANG">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [MAHANG] FROM [HANG]"></asp:SqlDataSource>
                </td>                
            </tr>
            <tr>
                <td>Số lượng</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>                
            </tr>
            <tr>
                <td class="auto-style1">Ngày</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>                
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>                
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="ADD" OnClick="Button4_Click" />
                </td>
                <td>&nbsp;</td>                
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Exit" OnClick="Button5_Click" />
                </td>
                <td>&nbsp;</td>                
            </tr>
        </table>
        </asp:Panel>
        

    </div>
    
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style5 {
            width: 473px;
        }
    </style>
</asp:Content>


