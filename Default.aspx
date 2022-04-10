<%@ Page Title="Hello!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WalkingLab._Default" ClientIDMode="Static" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-12 col-md-6">
            <img src="images/banner.jpg" />
        </div>
        <div class="col-12 col-md-auto">
            <h1>Hi! I'm Meng-Hsin</h1>
            <p class="lead">
                I'm an integration engineer based in Taiwan.<br />
                I'm a marathon finisher.<br />
                And I self-study programming.
            </p>
            <span class="short-line"></span>
            <a href="About.aspx" class="btn btn-outline-danger">About Me >></a>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-12 col-md-6">
            <h2>Works</h2>
            <p class="lead">
                Side projects of Front-End web function practicing using JavaScripts and Open Data API.
            </p>
            <p class="remark">Photo by <a href="https://unsplash.com/@tiffanylnutt?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Tiffany Nutt</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a></p>
            <span class="short-line"></span>
<%--            <div class="card" style="width: 18rem;">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a class="dropdown-item" href="TaipeiBike.aspx"><span class="material-icons md-18">directions_bike</span> 臺北市YouBike2.0即時資訊</a></li>
                    <li class="list-group-item"><a class="dropdown-item" href="TaoyuanBike.aspx"><span class="material-icons md-18">directions_bike</span> 桃園市YouBike即時資訊</a></li>
                    <li class="list-group-item"><a class="dropdown-item" href="TaoyuanParking.aspx"><span class="material-icons md-18">directions_car</span> 桃園市停車場即時資訊</a></li>
                </ul>
            </div>--%>

            <div class="card-group">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><span class="material-icons">directions_bike</span></h5>
                        <h5 class="card-title">TaipeiBike</h5>
                        <p class="card-text">臺北市YouBike2.0即時資訊</p>
                        <a class="btn btn-outline-dark" href="TaipeiBike.aspx">Go >></a>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><span class="material-icons">directions_bike</span></h5>
                        <h5 class="card-title">TaoyuanBike</h5>
                        <p class="card-text">桃園市YouBike即時資訊</p>
                        <a class="btn btn-outline-dark" href="TaoyuanBike.aspx">Go >></a>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><span class="material-icons">directions_car</span></h5>
                        <h5 class="card-title">TaoyuanParking</h5>
                        <p class="card-text">桃園市停車場即時資訊</p>
                        <a class="btn btn-outline-dark" href="TaoyuanParking.aspx">Go >></a>
                    </div>
                </div>
            </div>

            <div class="ht-50"></div>
        </div>
        <div class="col-12 col-md-6">
            <img src="images/bike-unsplash.jpg" />
        </div>
    </div>

</asp:Content>
