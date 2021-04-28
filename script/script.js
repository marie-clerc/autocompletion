// https://phppot.com/jquery/jquery-ajax-autocomplete-country-example/

$(document).ready(function()
{
    $("#searchart").keyup(function()
    {
        console.log(searchart.value);

        // si la recherhce est vide, pas de suggestion
        vide = document.getElementById('searchart')
        if(vide.value == "")
        {
            document.getElementById('resultats').innerHTML = ""

        }
        else
        {
            $.ajax({
                type: "GET",
                dataType: "JSON",
                url: "classes/encodejson.php",
                data: 'search=' + $(this).val(),

                success: function (data) {
                    console.table(data);
                    $("#resultats").show();
                    $("#resultats").html(data);
                    $("#resultats").css("background","#FFF");
                    let i = 0;
                    while (i < data.length) {
                        $("#resultats").append("<p class='resultatsajax'>" +
                            "<a style='text-decoration: none; color: black; cursor: pointer;' href='element.php?id=" + data[i].id + "'><img style='width: 80px; height: auto;' src=" + data[i].image + "> " + data[i].nom + ", " + data[i].artiste + ", " + data[i].categorie + ", " + data[i].date + ", " + data[i].courant + ", " + data[i].conservation + "</a></p>");
                        i++;
                    }
                }
            });
        }
    });
});