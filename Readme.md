<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - Search Panel - How to search and highlight text placed in the PreviewRow


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


