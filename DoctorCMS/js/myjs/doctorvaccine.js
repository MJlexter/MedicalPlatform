



var myjs_listPageLoad = function () {
    $("#condition_doctor_id").parent().parent().hide();
};

var myjs_detailPageLoad = function () {
    $("#content_doctor_id").parent().parent().hide();
    $("#content_vaccine_id").after("<a onclick='openVaccine();' href='#' >View</a>");

};

function openVaccine() {
    if ($("#content_vaccine_id").val() != "0") {
        var id = $("#content_vaccine_id").val();
        var rn = Date.parse(new Date());;
        window.open("vaccine.php?rn="+rn+"&id=" + id, 'newwindow', 'width=900,height=500,scrollbars ');
    }
}

