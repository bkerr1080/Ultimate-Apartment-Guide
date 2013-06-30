<%@ Page Title="" Language="C#" MasterPageFile="~/3column.Master" AutoEventWireup="true" CodeBehind="3coltest.aspx.cs" Inherits="Ultimate_Apartment_Guide._3coltest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome to the Ultimate Apartment Guide</h1>
    <p>Your source for apartments. Blah blah blah.</p>
    <p>Your source for apartments. Blah blah blah.</p>
    <p>Your source for apartments. Blah blah blah.</p>
    <p>Your source for apartments. Blah blah blah.</p>
    <p>Your source for apartments. Blah blah blah.</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SecondaryContent" runat="server">
    <div id="three-columns">
	    <div id="box1">
            <div class="box1 box-sytle">
	            <h2 class="title">This is just a <span>test</span></h2>
	            <div class="content">
		            <div class="bgtop">
			            <div class="bgbtm">
				            <p>These look way off without the images and stuff, but maybe it's just a lack of length in the text that's being displayed, so this is just filler text to see if maybe having more text filling up this box will make it look better like it did when there was a picture!</p>
				            <p class="separator">&nbsp;</p>
				            <p class="link"><a href="#">Learn more ...</a></p>
			            </div>
		            </div>
	            </div>
            </div>
	    </div>
	    <div id="box2">
            <div class="box2 box-sytle">
		        <h2 class="title">Still just a <span>test</span></h2>
		        <div class="content">
			        <div class="bgtop">
				        <div class="bgbtm">
				            <p>These look way off without the images and stuff, but maybe it's just a lack of length in the text that's being displayed, so this is just filler text to see if maybe having more text filling up this box will make it look better like it did when there was a picture!</p>
					        <p class="separator">&nbsp;</p>
					        <p class="link"><a href="#">Learn more ...</a></p>
				        </div>
			        </div>
		        </div>
	        </div>
	    </div>
	    <div id="box3">
            <div class="box3 box-sytle">
		        <h2 class="title">This is a <span>test</span></h2>
		        <div class="content">
			        <div class="bgtop">
				        <div class="bgbtm">
				            <p>These look way off without the images and stuff, but maybe it's just a lack of length in the text that's being displayed, so this is just filler text to see if maybe having more text filling up this box will make it look better like it did when there was a picture!</p>
                            <p>Yup! That seemed to fix it for the other two but there's still something off on this one... Lame! And heaven forbid you add more text than they want you to, that will need to be fixed!</p>
					        <p>Just to test and make sure we can still fit even more text, we're going to add even one more paragraph with a bunch of filler text and see what happens...</p>
                            <p>Success!</p>
                            <p class="separator">&nbsp;</p>
					        <p class="link"><a href="#">Learn more ...</a></p>
				        </div>
			        </div>
		        </div>
	        </div>
	    </div>
    </div>
</asp:Content>