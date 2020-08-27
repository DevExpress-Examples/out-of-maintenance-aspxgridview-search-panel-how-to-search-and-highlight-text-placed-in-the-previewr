<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .hiddenColumn
        {
            display: none;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="gridView" runat="server" AutoGenerateColumns="False"
            DataSourceID="ads" KeyFieldName="CategoryID" Theme="DevEx">
            <SettingsSearchPanel Visible="true" />
            <Columns>
                <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                    <HeaderStyle CssClass="hiddenColumn" />
                    <EditCellStyle CssClass="hiddenColumn" />
                    <CellStyle CssClass="hiddenColumn" />
                    <FilterCellStyle CssClass="hiddenColumn" />
                    <FooterCellStyle CssClass="hiddenColumn" />
                    <GroupFooterCellStyle CssClass="hiddenColumn" />
					<DataItemTemplate></DataItemTemplate>
                </dx:GridViewDataTextColumn>
            </Columns>
            <Settings ShowPreview="true" />
            <Templates>
                <PreviewRow>
                    <dx:ASPxLabel ID="label" runat="server" Text='<%# Eval("Description") %>'
                        OnDataBound="label_DataBound" EncodeHtml="false" ForeColor="Black">
                    </dx:ASPxLabel>
                </PreviewRow>
            </Templates>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
    </form>
</body>
</html>
