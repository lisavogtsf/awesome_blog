$(document).ready(function(){
	// get posts
	var userId = $(".post-form").attr("data-id")


	function getPosts(search){
		return $.getJSON("/users/" + search + "/posts.json", function(){})
	}

	$.when(getPosts(userId)).done(function(result){
				console.log(result)
				var compiledTemplate = HandlebarsTemplates['post/new']({result: result});
				$('.grid.right').append(compiledTemplate);
	})

	function createPosts(id, data) {
		return $.ajax({
			method: 'post',
			url: "/users/" + id + "posts/new",
			data: data
		});
	}

	// console.log(getPosts(3))

	//show new Post
	$(".update").on("onclick", function(e){
		e.preventDefault();
		var post = {
			title: $("#post_title").val(),
			content: $("#post_content").val(),
			tags: $("#tags").val()
		}
		$.when(createPosts(userId, post), function(post){
			})
	})
})