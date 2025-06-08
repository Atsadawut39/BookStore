<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BookStore._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>

        <!-- HERO SECTION -->
        <section class="text-center bg-light p-5 mb-5">
            <h1 class="fw-bold mb-3">📚 โปรแกรมบริหารร้านหนังสือ ที่ใช้งานง่ายที่สุด</h1>
            <p class="lead text-muted">จัดการสต๊อกหนังสือ คำสั่งซื้อ และลูกค้าได้ในระบบเดียว ไม่ต้องติดตั้ง</p>
            <a href="Download.aspx" class="btn btn-primary btn-lg mt-3">🚀 ดาวน์โหลดโปรแกรม</a>
        </section>

        <!-- FEATURES SECTION -->
        <section class="container py-5">
            <div class="row text-center">
                <div class="col-md-4 mb-4">
                    <i class="bi bi-box-seam fs-1 text-primary"></i>
                    <h5 class="mt-3">จัดการสต๊อก</h5>
                    <p class="text-muted">เพิ่ม/ลดหนังสือ ดูประวัติคลังได้ทันที</p>
                </div>
                <div class="col-md-4 mb-4">
                    <i class="bi bi-cart-check fs-1 text-success"></i>
                    <h5 class="mt-3">ระบบขายครบวงจร</h5>
                    <p class="text-muted">ออกบิล สั่งซื้อ รับเงิน จบในคลิกเดียว</p>
                </div>
                <div class="col-md-4 mb-4">
                    <i class="bi bi-people fs-1 text-warning"></i>
                    <h5 class="mt-3">ผู้ใช้หลายระดับ</h5>
                    <p class="text-muted">แอดมิน/พนักงาน ใช้งานพร้อมกันได้</p>
                </div>
            </div>
        </section>

        <!-- CHECKLIST SECTION -->
        <section class="container py-5">
            <h4 class="text-center mb-4">ทำไมถึงต้องใช้โปรแกรมนี้?</h4>
            <div class="row text-start justify-content-center">
                <div class="col-md-6">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">✅ ไม่ต้องติดตั้ง ใช้งานผ่านเว็บได้เลย</li>
                        <li class="list-group-item">✅ ใช้ได้หลายสาขา รองรับการเติบโต</li>
                        <li class="list-group-item">✅ มีระบบสำรองข้อมูลอัตโนมัติ</li>
                        <li class="list-group-item">✅ ปรับแต่งได้ตามร้านของคุณ</li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- BADGE SECTION -->
        <div class="text-center mt-4">
            <span class="badge bg-success fs-6 px-4 py-2">✅ ฟรี 100% ไม่มีโฆษณา</span>
            <span class="badge bg-info text-dark fs-6 px-4 py-2">🔐 ข้อมูลปลอดภัย</span>
        </div>

        <!-- REVIEW SECTION -->
        <asp:Panel runat="server" CssClass="bg-white py-5 text-center">
            <div class="container">
                <h3 class="mb-4">รีวิวจากผู้ใช้งาน</h3>

                <!-- แสดงรีวิวจากฐานข้อมูล -->
                <asp:Repeater ID="rptReviews" runat="server">
                    <ItemTemplate>
                        <blockquote class="blockquote">
                            <p class="mb-0"><%# Eval("ReviewText") %></p>
                            <footer class="blockquote-footer mt-2"><%# Eval("ReviewerName") %></footer>
                        </blockquote>
                        <hr />
                    </ItemTemplate>
                </asp:Repeater>

                <!-- ฟอร์มเพิ่มรีวิว -->
                <div class="mt-4">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-2" placeholder="ชื่อผู้รีวิว"></asp:TextBox>
                    <asp:TextBox ID="txtReview" runat="server" CssClass="form-control mb-2" TextMode="MultiLine" placeholder="แสดงความคิดเห็น"></asp:TextBox>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="ส่งรีวิว" OnClick="btnSubmit_Click" />
                </div>
            </div>
        </asp:Panel>

    </main>
</asp:Content>
