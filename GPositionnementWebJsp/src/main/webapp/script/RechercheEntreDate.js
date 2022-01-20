$(document).ready(function () {

    $("#recherche").click(function () {
        var date1 = $("#date1").val();
        var date2 = $("#date2").val();
        //alert("date 1 : " +date1+"date 2 : " +date2);
            $.ajax({
                url: "RechercheProfEntreDateController",
                data: {date1:date1,date2:date2,op:"recherche"},
                method: 'POST',
                success: function (data) {
                    remplir(data);
                    
                },
                error: function (data) {
                    console.log(data);
                }
            });
        return false;
    });

    function remplir(data) {
        var ligne = "";
        for (i = 0; i < data.length; i++) {
            ligne += '<tr><td>' + data[i].id + '</td><td>' + data[i].nom + '</td><td>' + data[i].prenom + '</td>\n\
            <td>' + data[i].telephone + '</td><td>' + data[i].email + '</td><td>' + data[i].dateEmbauche + '</td>\n\
            <td>' + data[i].sexe + '</td><td>' + data[i].specialite.libelle + '</td>';
        }

        $("#content").html(ligne);
    }
});


