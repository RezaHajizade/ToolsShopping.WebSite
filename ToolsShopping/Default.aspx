<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="center_content">

        <div class="oferta">


            <!-- Insert to your webpage where you want to display the slider -->
            <div id="amazingslider-wrapper-1" style="display: block; position: relative; max-width: 585px; margin: 0px auto 6px;">
                <div id="amazingslider-1" style="display: block; position: relative; margin: 0 auto;">
                    <ul class="amazingslider-slides" style="display: none;">
                        <li>
                            <img src="imagesSlider/01.jpg" alt="01" title="01" />
                        </li>
                        <li>
                            <img src="imagesSlider/02.jpg" alt="02" title="02" />
                        </li>
                        <li>
                            <img src="imagesSlider/03.jpg" alt="03" title="03" />
                        </li>
                        <li>
                            <img src="imagesSlider/04.jpg" alt="04" title="04" />
                        </li>
                        <li>
                            <img src="imagesSlider/05.jpg" alt="05" title="05" />
                        </li>
                    </ul>
                    <ul class="amazingslider-thumbnails" style="display: none;">
                        <li>
                            <img src="imagesSlider/01-tn.jpg" alt="01" title="01" /></li>
                        <li>
                            <img src="imagesSlider/02-tn.jpg" alt="02" title="02" /></li>
                        <li>
                            <img src="imagesSlider/03-tn.jpg" alt="03" title="03" /></li>
                        <li>
                            <img src="imagesSlider/04-tn.jpg" alt="04" title="04" /></li>
                        <li>
                            <img src="imagesSlider/05-tn.jpg" alt="05" title="05" /></li>
                    </ul>
                </div>


            </div>
            <!-- End of body section HTML codes -->
            <br />
        </div>

        <div class="center_title_bar" style="text-align:right;padding-right:20px;padding-top:10px;">آخرین محصولات</div>
        <!-- **************** -->

        <asp:DataList ID="DataListLatestproducts" runat="server" DataKeyField="ToolID" Width="100%" RepeatColumns="3">
            <ItemTemplate>
                <div class="prod_box">
                    <div class="center_prod_box">
                        <div class="product_title"><a href="#">
                            <asp:Label Text='<%# Eval("ToolName") %>' runat="server" ID="ToolNameLabel" /></a></div>
                        <div class="product_img"><a href="#">
                            <asp:ImageButton ID="ImageButton1" runat="server" Width="94" Height="71" ImageUrl='<%# Eval("PictureParts","images/Parts/{0}") %>' PostBackUrl='<%# Eval("ToolID","SinglePage.aspx?ToolID={0}") %>' /></a></div>
                        <div class="prod_price"><span>
                            <asp:Label Text='<%# Eval("PrePrice") %>' runat="server" ID="PrePriceLabel" /></span><br />
                            <del class="price">
                                <asp:Label Text='<%# Eval("CurPrice") %>' runat="server" ID="CurPriceLabel" /></del>  </div>
                    </div>
                    <div class="prod_details_tab" style="text-align: right; padding-right: 20px; padding-top: 10px;"><a href="<%# Eval("ToolID","SinglePage.aspx?ToolID={0}") %>" class="prod_details">جزئیات</a> </div>
                </div>


            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopingFaradarsConnectionString %>" SelectCommand="SELECT ToolName, ToolID, PrePrice, CurPrice, PictureParts FROM Tb_Parts WHERE (AccessStatus = 1)"></asp:SqlDataSource>


        <!-- **************** -->


        <div class="center_title_bar" style="text-align: right; padding-right: 20px; padding-top: 10px;">آخرین خریدها</div>

       
        <asp:DataList ID="DataListLatestpurchases" runat="server" DataKeyField="ToolID" Width="100%" RepeatColumns="3">
            <ItemTemplate>
                <div class="prod_box">
                    <div class="center_prod_box">
                        <div class="product_title"><a href="#">
                            <asp:Label Text='<%# Eval("ToolName") %>' runat="server" ID="ToolNameLabel" /></a></div>
                        <div class="product_img"><a href="#">
                            <asp:ImageButton ID="ImageButton1" runat="server" Width="94" Height="71" ImageUrl='<%# Eval("PictureParts","images/Parts/{0}") %>' PostBackUrl='<%# Eval("ToolID","SinglePage.aspx?ToolID={0}") %>' /></a></div>
                        <div class="prod_price"><span>
                            <asp:Label Text='<%# Eval("PrePrice") %>' runat="server" ID="PrePriceLabel" /></span><br />
                            <del class="price">
                                <asp:Label Text='<%# Eval("CurPrice") %>' runat="server" ID="CurPriceLabel" /></del>  </div>
                    </div>
                    <div class="prod_details_tab" style="text-align: right; padding-right: 20px; padding-top: 10px;"><a href="<%# Eval("ToolID","SinglePage.aspx?ToolID={0}") %>" class="prod_details">جزئیات</a> </div>
                </div>


            </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShopingFaradarsConnectionString %>" SelectCommand="SELECT ToolName, ToolID, PrePrice, CurPrice, PictureParts FROM Tb_Parts WHERE (AccessStatus = 2)"></asp:SqlDataSource>



    </div>






</asp:Content>

