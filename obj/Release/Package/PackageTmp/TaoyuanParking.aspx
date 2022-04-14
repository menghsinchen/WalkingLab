<%@ Page Title="桃園市停車場即時資訊" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TaoyuanParking.aspx.cs" Inherits="WalkingLab.TaoyuanParking" ClientIDMode="Static" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {
            $.ajax({
                dataType: "json",
                url: "TaoyuanParking.json",
                success: function (data) {
                    var districtall = $(data).map(function () {
                        return this.areaName;
                    }).get();
                    districtall.sort();
                    var districtunique = new Array();
                    for (var i = 0; i < districtall.length; i++) {
                        if (!districtunique.includes(districtall[i])) {
                            districtunique.push(districtall[i]);
                        }
                    }
                    $("#district").kendoDropDownList({
                        dataSource: districtunique,
                        select: function (e) {
                            var value = this.value();
                            grid(value);
                        }
                    });
                },
                error: function () {
                    console.log("opps!");
                }
            });

            function grid(district) {
                $("#grid").kendoGrid({
                    dataSource: {
                        transport: {
                            read: {
                                url: "TaoyuanParking.json",
                                dataType: "json"
                            }
                        },
                        schema: {
                            model: {
                                fields: {
                                    totalSpace: { type: "number" },
                                    surplusSpace: { type: "number" }
                                }
                            }
                        },
                        filter: [
                            { field: "areaName", operator: "eq", value: district },
                            { field: "surplusSpace", operator: "gte", value: 0 }
                        ]
                    },
                    columns: [
                        { field: "areaName", title: "區域", filterable: { multi: true, search: true } },
                        {
                            field: "parkName",
                            title: "停車場",
                            template: function (dataItem) {
                                var name = kendo.htmlEncode(dataItem.parkName);
                                var mapurl = "https://maps.google.com/?q=" + kendo.htmlEncode(dataItem.wgsX) + "," + kendo.htmlEncode(dataItem.wgsY);
                                var pay = kendo.htmlEncode(dataItem.payGuide);
                                return name + " <a target='_blank' href='" + mapurl + "'><img src='images/location_black.png' title='" + pay + "' height='12px'/></a>";
                            }
                        },
                        { field: "totalSpace", title: "車位數量" },
                        { field: "surplusSpace", title: "空位數量" },
                        { field: "introduction", hidden: true },
                        { field: "payGuide", title: "收費方式", hidden: true },
                        { field: "wgsX", hidden: true },
                        { field: "wgsY", hidden: true },
                        { field: "parkId", hidden: true }
                    ],
                    filterable: {
                        mode: "menu",
                        extra: false,
                        operators: {
                            number: {
                                eq: "Equal to",
                                neq: "Not equal to",
                                gte: "Greater than or equal to",
                                lte: "Less than or equal to"
                            }
                        }
                    },
                    groupable: true,
                    resizable: false,
                    scrollable: false,
                    sortable: true
                });
            }
        });
    </script>
    <h3>桃園市停車場即時資訊</h3>
    <br />
    <input id="district">
    <div id="grid"></div>

</asp:Content>
