<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BookStore.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-4">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <h2 class="card-title text-primary mb-3"><%: Title %></h2>
                        <h5 class="card-subtitle mb-4 text-muted">หน้าติดต่อเรา</h5>

                        <div class="mb-4">
                            <h6 class="text-dark fw-bold">ที่อยู่</h6>
                            <address class="text-muted">
                                One Microsoft Way<br />
                                Redmond, WA 98052-6399<br />
                                <abbr title="Phone">โทร:</abbr> 425.555.0100
                            </address>
                        </div>

                        <div>
                            <h6 class="text-dark fw-bold">ติดต่อ</h6>
                            <p class="text-muted mb-1">
                                <strong>Support:</strong> 
                                <a href="mailto:Support@example.com">Support@example.com</a>
                            </p>
                            <p class="text-muted">
                                <strong>Marketing:</strong> 
                                <a href="mailto:Marketing@example.com">Marketing@example.com</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
