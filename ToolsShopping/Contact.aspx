<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



        <div class="center_content">
  <div class="center_title_bar">Contact Us</div>
  <div class="prod_box_big">
    <div class="center_prod_box_big">
      <div class="contact_form">
        <div class="form_row">
          <label class="contact"><strong>Name:</strong></label>
          <input type="text" class="contact_input" />
        </div>
        <div class="form_row">
          <label class="contact"><strong>Email:</strong></label>
          <input type="text" class="contact_input" />
        </div>
        <div class="form_row">
          <label class="contact"><strong>Phone:</strong></label>
          <input type="text" class="contact_input" />
        </div>
        <div class="form_row">
          <label class="contact"><strong>Company:</strong></label>
          <input type="text" class="contact_input" />
        </div>
        <div class="form_row">
          <label class="contact"><strong>Message:</strong></label>
          <textarea class="contact_textarea" ></textarea>
        </div>
        <div class="form_row"> <a href="#" class="prod_details">send</a> </div>
      </div>
    </div>
  </div>
</div>

</asp:Content>

