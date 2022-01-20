$(document).ready(function () {

    $.ajax({
        url: "SmartPhoneController",
        data: {op: "load"},
        method: 'GET',
        success: function (data) {
            remplir(data);

        },
        error: function (textStatus) {
            console.log(textStatus);
        }
    });

    $('#contentsmart').on('click', '#update', function () {
        var id = $(this).attr("indice");
        console.log("update" + id);
        $.ajax({
            url: "LoadSmartPhone",
            type: 'GET',
            data: {id: id},
            success: function (data) {
                
                $("#imei").val(data.imei);
                $("#op").val("update");
                $("#op").attr("indice", id);
                $("#user option").filter(function() {
                    return this.text == data.utilisateur.nom; 
                }).attr('selected', true);
                $("#add").html("Modifier");
            },
            error: function (errorThrown) {
                console.log("erreur");
            }
        });
    });


    $("#add").click(function () {
        var imei = $("#imei").val();
        var user = $("#user").val();
        var op = $("#op").val();
        var indice = $("#op").attr("indice");
       // alert("OP : " + op + " INDICE : " + indice);
        if (op != "update") {
            $.ajax({
                url: "SmartPhoneController",
                data: {imei: imei, user:user},
                method: 'POST',
                success: function (data) {
                    remplir(data);
                    $("#add").html("Ajouter");
                },
                error: function (data) {
                    console.log(data);
                }
            });
        } else {
            $.ajax({
                url: "SmartPhoneController",
                data: {imei: imei, user:user, op: op, indice: indice},
                method: 'POST',
                success: function (data) {
                    remplir(data);
                },
                error: function (data) {
                    console.log(data);
                }
            });
        }
        vider();
    });

    $("#contentsmart").on('click', '#delete', function () {
        var indice = $(this).attr('indice');
        $.ajax({
            url: "SmartPhoneController",
            data: {op: "delete", indice: indice},
            method: 'POST',
            success: function (data) {
                remplir(data);
            },
            error: function (data) {
                console.log(data);
            }
        });
        vider();
        $("#add").html("Ajouter");
    });


     function vider(){
        $("#imei").val("");
        $("#user").val("");
    }

    function remplir(data) {
        var ligne = "";
        for (i = 0; i < data.length; i++) {
            ligne += '<tr><td>' + data[i].id + '</td><td>' + data[i].imei + '</td>\n\
            <td>' + data[i].utilisateur.nom + '</td>\n\
            <td><button class="btn btn-rounded btn-info mb-3"  id="delete" indice="' + data[i].id + '">Supprimer</button></td>\n\
            <td><button class="btn btn-rounded btn-dark mb-3" id="update" indice="' + data[i].id + '">Modifier</button></td></tr>';
        }

        $("#contentsmart").html(ligne);
    }
});


