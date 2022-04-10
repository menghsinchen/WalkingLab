<%@ Page Title="臺北市YouBike2.0即時資訊" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TaipeiBike.aspx.cs" Inherits="WalkingLab.TaipeiBike" ClientIDMode="Static" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {
            $.ajax({
                dataType: "json",
                url: "https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json",
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

            var interval;
            $("#switch").kendoSwitch({
                size: "medium",
                messages: {
                    checked: "ON",
                    unchecked: "OFF"
                },
                checked: false,
                change: function (e) {
                    clearInterval(interval);
                    var switchOn = $("#switch").kendoSwitch().data("kendoSwitch").check();
                    if (switchOn) {
                        interval = setInterval(function () {
                            $("#grid").data("kendoGrid").dataSource.read();
                        }, 60 * 1000);
                    }
                }
            })

            function grid(district) {
                $("#grid").kendoGrid({
                    dataSource: {
                        transport: {
                            read: {
                                url: "https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json",
                                dataType: "json"
                            }
                        },
                        schema: {
                            model: {
                                fields: {
                                    sbi: { type: "number" },
                                    bemp: { type: "number" }
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
                                var station = kendo.htmlEncode(dataItem.sna).replace("YouBike2.0_", "");
                                var mapurl = "https://maps.google.com/?q=" + kendo.htmlEncode(dataItem.lat) + "," + kendo.htmlEncode(dataItem.lng);
                                var address = kendo.htmlEncode(dataItem.ar);
                                return station + " <a target='_blank' href='" + mapurl + "'><img src='images/location_black.png' title='" + address + "' height='12px'/></a>";
                            }
                        },
                        { field: "ar", title: "地點", hidden: true },
                        { field: "tot", title: "總停車格", hidden: true },
                        { field: "sbi", title: "可借數量" },
                        { field: "bemp", title: "空位數量" },
                        "updateTime"
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

            function UpdateTime() {
                var d = new Date();
                var ut = d.getFullYear() + "-"
                    + String(d.getMonth() + 1).padStart(2, "0") + "-"
                    + String(d.getDate()).padStart(2, "0") + " "
                    + String(d.getHours()).padStart(2, "0") + ":"
                    + String(d.getMinutes()).padStart(2, "0") + ":"
                    + String(d.getSeconds()).padStart(2, "0");
                return ut;
            }
        });
    </script>

    <h3>臺北市YouBike2.0即時資訊</h3>
    <div>
        Auto refresh every minute:
        <input id="switch" />
    </div>
    <br />
    <input id="district">
    <div id="grid"></div>
    <%--    <div id="windowMap">
        <iframe src="https://maps.google.com/maps?q=25.02605,121.5436&output=embed" width="500" height="400" id="gmap_canvas" frameborder="0"></iframe>
    </div>--%>
</asp:Content>
