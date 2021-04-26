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

                success: function (dataType) {
                    console.table(dataType);
                    $("#resultats").show();
                    $("#resultats").html(dataType);
                    let i = 0;
                    while (i < dataType.length) {
                        $("#resultats").append("<p class='resultatsajax'>" +
                            "<a style='text-decoration: none; color: black; cursor: pointer;' href='element.php?id=" + dataType[i].id + "'><img style='width: 80px; height: auto;' src=" + dataType[i].image + "> " + dataType[i].nom + ", " + dataType[i].artiste + ", " + dataType[i].categorie + "</a></p>");
                        i++;
                    }
                }
            });
        }
    });
});