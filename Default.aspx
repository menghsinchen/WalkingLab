<%@ Page Title="Hello!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WalkingLab._Default" ClientIDMode="Static" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-12 col-md-6">
            <img src="https://scontent.ftpe7-3.fna.fbcdn.net/v/t1.6435-9/75464383_10221953452690409_3466117493536325632_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=CBhjut0Z5ScAX_5PHWB&_nc_ht=scontent.ftpe7-3.fna&oh=00_AT-NaaWjrPvnRxU1dPhXA3um8PPReqR_XqJoCxijDzGfzQ&oe=627E0282" />
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
            <h2>Portfolio</h2>
            <p class="lead">
                Side projects of Front-End web function practicing using JavaScripts and Open Data API.
            </p>
            <p class="remark">Photo by <a href="https://unsplash.com/@tiffanylnutt?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Tiffany Nutt</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a></p>
            <span class="short-line"></span>

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
            <img src="https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80" />
        </div>
    </div>

</asp:Content>
