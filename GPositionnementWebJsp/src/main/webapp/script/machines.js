$(document).ready(function () {

    $.ajax({
        url: "MachineController",
        data: {op: "load"},
        method: 'GET',
        success: function (data) {
            remplir(data);
        },
        error: function (textStatus) {
            console.log(textStatus);
        }
    });

    $('#content').on('click', '.update', function () {
        var id = $(this).attr("indice");
        $.ajax({
            url: "LoadMachine",
            type: 'GET',
            data: {id: id},
            success: function (data) {
                $("#ref").val(data.reference);
                $("#prix").val(data.prix);
                $("#dateAchat").val(data.dateAchat);
                $("#add").html("Modifier");
                $("#operation").val("update");
                $("#operation").attr("indice", id);
            },
            error: function (errorThrown) {
                console.log("erreur");
            }
        });
    });


    $("#add").click(function () {
        var reference = $("#ref").val();
        var prix = $("#prix").val();
        var dateAchat = $("#dateAchat").val();

        $.ajax({
            url: "MachineController",
            data: {ref: reference, prix: prix, dateAchat: dateAchat},
            method: 'POST',
            success: function (data) {
                remplir(data);
            },
            error: function (data) {
                console.log(data);
            }
        });
    });

    $("#content").on('click', '.delete', function () {
        var indice = $(this).attr('indice');
        $.ajax({
            url: "MachineController",
            data: {op: "delete", indice: indice},
            method: 'POST',
            success: function (data) {
                remplir(data);
            },
            error: function (data) {
                console.log(data);
            }
        });
    });



    function remplir(data) {
        var ligne = "";
        for (i = 0; i < data.length; i++) {
            // ligne += "<tr><td>" + e.id + "</td> <td>" + e.reference + "</td> <td>" + e.prix + "</td> <td>" + e.dateAchat + "</td> <td><button indice="+ e.id+ "class='delete'>Supprimer</button></td> <td><button indice="+e.id+" class='update'>Modifier</button></td></tr>";
            ligne += '<tr><td>' + data[i].id + '</td><td>' + data[i].reference + '</td><td>' + data[i].prix + '</td><td>' + data[i].dateAchat + '</td><td><button class="delete" indice="' + data[i].id + '">Supprimer</button></td><td><button class="update" indice="' + data[i].id + '">Modifier</button></td></tr>';
        }

        $("#content").html(ligne);
    }
});