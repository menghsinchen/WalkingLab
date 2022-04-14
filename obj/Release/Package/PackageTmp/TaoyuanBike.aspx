<%@ Page Title="桃園市YouBike即時資訊" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TaoyuanBike.aspx.cs" Inherits="WalkingLab.TaoyuanBike" ClientIDMode="Static" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {
            $.ajax({
                dataType: "json",
                url: "TaoyuanBike.json",
                success: function (data) {
                    var districtall = $(data).map(function () {
                        return this.sarea;
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
                                url: "TaoyuanBike.json",
                                dataType: "json"
                            }
                        },
                        schema: {
                            model: {
                                fields: {
                                    tot: { type: "number" },
                                    sbi: { type: "number" },
                                    bemp: { type: "number" },
                                    lat: { type: "number" },
                                    lng: { type: "number" }
                                }
                            }
                        },
                        filter: { field: "sarea", operator: "eq", value: district }
                    },
                    columns: [
                        { field: "sno", title: "場站代號", hidden: true },
                        { field: "sarea", title: "區域", filterable: { multi: true, search: true } },
                        {
                            field: "sna",
                            title: "場站",
                            template: function (dataItem) {
                                var station = kendo.htmlEncode(dataItem.sna);
                                var mapurl = "https://maps.google.com/?q=" + kendo.htmlEncode(dataItem.lat) + "," + kendo.htmlEncode(dataItem.lng);
                                var address = kendo.htmlEncode(dataItem.ar);
                                return station + " <a target='_blank' href='" + mapurl + "'><img src='images/location_black.png' title='" + address + "' height='12px'/></a>";
                            }
                        },
                        { field: "ar", title: "地點", hidden: true },
                        { field: "tot", title: "總停車格", hidden: true },
                        { field: "sbi", title: "可借數量" },
                        { field: "bemp", title: "空位數量" }
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
                    pageable: false,
                    resizable: false,
                    scrollable: false,
                    sortable: true,
                });
            }
        });
    </script>

    <h3>桃園市YouBike即時資訊</h3>
    <br />
    <input id="district">
    <div id="grid"></div>
</asp:Content>
