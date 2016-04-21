
// From HackerNews
// $(document).ready(function() {

//   $('.post-container').on('click','.upvote-button',function(e){
// 	e.preventDefault();

// 	var article = $(this).parent().parent();
// 	var postID = article.attr('id');
// 	var input = {id: postID};

//   	$.ajax({
//   		method: "POST",
//   		url: "/posts/" + postID + "/vote",
//   		data: input
// 	  })
// 	 .done(function(data) {

//     	article.find('.points').text(data.points);
//     	article.find('.upvote-button').css("color","red");
//   	 });

//   })

//   $('.post-container').on('click','.delete',function(e){
//   	e.preventDefault();

//   	var article = $(this).parent().parent();
//   	var postID = article.attr('id');
//   	var input = {id: postID};

//   	$.ajax({
//   		type: "DELETE",
//   		url: "/posts/" + postID,
//   		data: input
// 	  })
// 	 .done(function(data) {
// 	 	article.css("display","none");
//   	});

//   })

//   $('#posts').submit(function(e){
//   	e.preventDefault();

//   	var input = $('#posts').serialize();

//   	$.ajax({
//   		method: "POST",
//   		url: "/posts",
//   		data: input
// 	  })
// 	 .done(function(data) {
// 	 	$('.post-container').append(data);
//   	 })
//   	 .fail(function(data){
//   	 	alert("Please enter valid title.");
//   	 });

//   })

//   $('.links').on('click','a',function(e){
//   	e.preventDefault();
//   	var linkID = $(this).attr('id');

//   	$.ajax({
//   		method: "GET",
//   		url: "/"+linkID
// 	  })
// 	 .done(function(data) {
// 	 	$('.post-container').html(data);
//   	 });

//   })


// });