<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TK_DTMH.aspx.cs" Inherits="DoAn.QLK_DTMH" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" RowStyle-HorizontalAlign="Center" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField HeaderText="Mã hàng" DataField="MAHANG" ItemStyle-Font-Bold="true"/>
                <asp:BoundField HeaderText="Tên hàng"  DataField="TENHANG"/>                
                <asp:BoundField HeaderText="Đơn giá"  DataField="DONGIA" DataFormatString="{0:0,0}"/>
                <asp:BoundField HeaderText="Tổng Số Lượng"  DataField="TONGSOLUONG"/>
                <asp:BoundField HeaderText="Thành Tiền" ItemStyle-Font-Bold="true" ControlStyle-Font-Bold="true" DataField="TONGTIEN" DataFormatString="{0:0,0}"/>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
</asp:Content>
