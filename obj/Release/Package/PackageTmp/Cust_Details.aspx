﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cust_Details.aspx.cs" MasterPageFile="Site1.Master" Inherits="SparksBank.Cust_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div id="wrapper">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">TSF BANK</a>
                </div>

                <div class="header-right">
                </div>
            </nav>
            <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <div class="user-img-div">
                                <img src="assets/img/user.png" class="img-thumbnail" />

                                <div class="inner-text">
                                    Salman Khan
                            <br />
                                    <small>Last Login : Yesterday </small>
                                </div>
                            </div>

                        </li>


                        <li>
                            <a class="active-menu" href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard</a>
                        </li>
                        <li>
                            <a href="Cust_details.aspx"><i class="fa fa-user "></i>Customers</a>

                        </li>
                        <li>
                            <a href="Transact.aspx"><i class="fa fa-money "></i>Transact</span></a>

                        </li>
                        <li>
                            <a href="Recent_TR.aspx"><i class="fa fa-clock-o "></i>Recent Transactions </a>

                        </li>
                        

                    </ul>

                </div>

            </nav>
            <div id="page-wrapper">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">All Account Holders</h1>
                            

                        </div>
                    </div>

                     <br />

                    <!-- /. ROW  -->
                    <center>
                    <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Records Found" OnRowCommand="My_Row_Command"  ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1121px" >
                        <AlternatingRowStyle BackColor="White" />
                     <Columns>
                    <asp:BoundField DataField="customer_id" HeaderText="Customer ID" HeaderStyle-width="5%" HeaderStyle-height="5%"   >
<HeaderStyle Height="5%" Width="5%" HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="cname" HeaderText="Name" HeaderStyle-width="20%" HeaderStyle-height="5%">
<HeaderStyle Height="5%" Width="20%" HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="mobile" HeaderText="Mobile" HeaderStyle-width="20%" HeaderStyle-height="5%">
<HeaderStyle Height="5%" Width="20%" HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="balance" HeaderText="balance" HeaderStyle-width="20%" HeaderStyle-height="5%">
<HeaderStyle Height="5%" Width="20%" HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="astatus" HeaderText="Status" HeaderStyle-width="20%" HeaderStyle-height="5%">
<HeaderStyle Height="5%" Width="20%" HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    </asp:BoundField>
                    <asp:TemplateField ShowHeader="True" HeaderText="Action">
            <ItemTemplate>
                <asp:LinkButton ID="Button1" runat="server" CausesValidation="false" Width="150px" height="30px"    style="TEXT-ALIGN:center; color:red; top:5px;" CommandName="Respond" Text="" CommandArgument='<%# Container.DataItemIndex %>'  > View <span class="fa fa-edit "></span></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
                     
                </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>

                   
                   
                    </center>


                    
                    </div>
                </div>
            </div>

            <!--/.ROW-->
      
      
        <!-- /. PAGE INNER  -->

     </asp:Content>