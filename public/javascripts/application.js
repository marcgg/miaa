function getNews(){
  $.get("/get_news", {num: 5}, function(data){
    $("#news").html(data);
  });
}