$(document).ready(function(){
	// get posts
	var userId = $(".post-form").attr("data-id")


	function getPosts(search){
		return $.getJSON("/users/" + search + "/posts.json", function(){})
	}

	$.when(getPosts(userId)).done(function(result){
		var compiledTemplate = HandlebarsTemplates['post/new']({result: result});
		$('#results').append(compiledTemplate);
	})

	function createPosts(id, data) {
		return $.ajax({
			method: 'post',
			url: "/users/" + id + "/posts",
			data: data
		});
	}

	//show new Post
	$("#new_post").on("submit", function(e){
		e.preventDefault();
		var post = {
			post: {
				title: $("#post_title").val(),
				content: $("#post_content").val()
			},
			tags: $("#tags").val()
		};
		$.when(createPosts(userId, post)).done(function(post){
			$('#post_title').val('');
			$('#post_content').val('');
			$('#tags').val('');

			var compiledTemplate = HandlebarsTemplates['post/new']({result: post});
			$('#results').prepend(compiledTemplate);

		})
	})
}); // end document ready






