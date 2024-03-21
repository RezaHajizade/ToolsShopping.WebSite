<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="SinglePage.aspx.cs" Inherits="SinglePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="center_content">

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%" DataKeyField="ToolID">
            <ItemTemplate>


                <div class="center_title_bar" style="text-align: center;">
                    کد کالا:
                    <asp:Label Text='<%# Eval("ToolID") %>' runat="server" ID="ToolIDLabel" />
                </div>
                <div class="prod_box_big">
                    <div class="center_prod_box_big">
                        <div class="product_img_big">
                            <a href="javascript:popImage('images/big_pic.jpg','Some Title')" title="header=[Zoom] body=[&nbsp;] fade=[on]">
                                <asp:Image ID="Image1" runat="server" Height="71px" ImageUrl='<%# Eval("PictureParts", "images/Parts/{0}") %>' Width="94px" /></a>

                        </div>
                        <div class="details_big_box" style="text-align: right;">
                            <div class="product_title_big">
                                 نام کالا : <span class="blue">
                                <asp:Label Text='<%# Eval("ToolName") %>' runat="server" ID="Label1" /></span>
                            </div>
                            <div class="specifications">
                                نوع کالا : <span class="blue">
                                    <asp:Label Text='<%# Eval("ClassName") %>' runat="server" ID="ClassNameLabel" /></span><br />

                                <span class="blue">
                                    <asp:Label Text='<%# Eval("BrandName") %>' runat="server" ID="BrandNameLabel" /></span>: کمپانی سازنده
                                <br />
                                امتیاز : <span class="blue">
                                    <asp:Label Text='<%# Eval("Score") %>' runat="server" ID="ScoreLabel" /></span><br />

                                نوع استفاده :<span class="blue">
                                    <asp:Label Text='<%# Eval("ElecricalName") %>' runat="server" ID="ElecricalNameLabel" /></span><br />
                            </div>
                            <div class="prod_price_big">
                                مبلغ جدید:<span class="price">
                                    <asp:Label Text='<%# Eval("CurPrice") %>' runat="server" ID="CurPriceLabel" /></span>
                                <br />
                                مبلغ قبلی:<span class="reduce">
                                    <asp:Label Text='<%# Eval("PrePrice") %>' runat="server" ID="PrePriceLabel" /></span>


                            </div>
                            <a href="#" class="prod_buy">اضافه کردن به کارت خرید</a> <a href="#" class="prod_compare">***</a>
                        </div>
                    </div>
                </div>


            </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopingFaradarsConnectionString %>"
            SelectCommand="SELECT Tb_Parts.ToolID, Tb_Parts.ToolName, Tb_Parts.ToolDescr, Tb_Class.ClassName, Tb_Brand.BrandName, Tb_Electrical.ElecricalName, Tb_Parts.Score, Tb_Parts.PrePrice, Tb_Parts.CurPrice, Tb_Parts.PictureParts FROM Tb_Parts INNER JOIN Tb_Class ON Tb_Parts.ClassID = Tb_Class.ClassID INNER JOIN Tb_Brand ON Tb_Parts.BrandID = Tb_Brand.BrandID INNER JOIN Tb_Electrical ON Tb_Parts.ElecricalID = Tb_Electrical.ElecricalID WHERE (Tb_Parts.AccessStatus <> 0) AND (Tb_Parts.ToolID = @ToolID)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="ToolID" Name="ToolID"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>

    </div>



</asp:Content>

