<script>
    var loader = document.getElementById("load");
    loader.setAttribute('style', 'display: none;');
    document.getElementById("query").onkeypress = function(event){
    if (event.keyCode == 13 || event.which == 13){
    queryBooks();
    }
    };
</script>