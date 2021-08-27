<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128536441/14.2.12%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T244114)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - Search Panel - How to search and highlight text placed in the PreviewRow
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t244114/)**
<!-- run online end -->


<p>The Search Panel can find text only from visible grid columns. So, it is necessary to create a column with a field that contains a PreviewRow. It is possible to hide it using the CSS styles:</p>


```aspx
<dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2" >
        <HeaderStyle CssClass="hiddenColumn" />
        <EditCellStyle CssClass="hiddenColumn" />
        <CellStyle CssClass="hiddenColumn" />
        <FilterCellStyle CssClass="hiddenColumn" />
        <FooterCellStyle CssClass="hiddenColumn" />
        <GroupFooterCellStyle CssClass="hiddenColumn" />
</dx:GridViewDataTextColumn>  
```




```css
.hiddenColumn
{
    display:none;
}

```


<p> Then, it is necessary to highlight the found text manually in the same manner as performed in the <a href="https://www.devexpress.com/Support/Center/p/T222691">ASPxGridView - Search Panel - How to highlight the text placed inside a DataItem template</a> example.</p>

<br/>


