<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactLoadControl.ascx.cs" Inherits="webSneakers.cms.display.contact.ContactLoadCotrol" %>
    <div class="contact-info">
        <div class="container">
            <div class="row">
                <center>
                    <table>
                        <tr>
                            <td>
                                <img width="30" src="Assets/image/iconlocation.jpg" />
                            </td>
                            <td>
                                <p>Address: 96 Dinh Cong, Hoang Mai, Ha Noi</p>
                            </td>
                     
                            <td>
                                <img width="40" src="Assets/image/ixonphone.jpg"/>
                            </td>
                            <td>
                                <p>Tel: 0123456789</p>
                            </td>
                        </tr>
                    </table>
                </center>
            </div>
            <div class="row">
                <div class="col-6">
                    <table>
                     
                <div class="col-6">
                    <table style="float: right;">
                        <tr>
                            <td>
                                <form action="" method ="GET">
                                    <fieldset>
                                        <legend>
                                            <H2>Get In Touch</H2>
                                        </legend>
                                        <table>
                                        <tr>
                                            <td>
                                                First Name<br> <textarea name="FN" cols="20" rows="2"></textarea>
                                            </td>
                                            <td>
                                                Last Name<br> <textarea name="LN" cols="20" rows="2"></textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                Email<br> <textarea name="Email" cols="60" rows="2"></textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                Subject<br> <textarea name="Subject" cols="60" rows="2"></textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                Message<br> <textarea name="Message" cols="60" rows="10"></textarea>
                                            </td>
                                        </tr>
                                        </table>
                                    </fieldset>
                                    <div align= "right"><input type="submit" value="Send Message"></div>
                                </form>
                            </td>
                        
                        </tr>
                    </table>  
                </div>
                <div class="col-6">
                    <fieldset style="margin-top: 50px; width: 500px;">
                        <img width="500" src="Assets/image/map.jpg"/>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</div>

    