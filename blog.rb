class Blog
	@@all_blog_posts = []
	@@num_blog_posts = 0

	def self.all
		@@all_blog_posts
	end

	def self.add(thing)
		@@all_blog_posts << thing
		@@num_blog_posts += 1
	end

	def self.publish
		@@all_blog_posts.each do |post|
			puts "Title:\n #{post.title}"
			puts "Body:\n #{post.content}"
			puts "Published on\n #{post.created}"
		end
	end
end

class BlogPost < Blog

	def self.create
		post = new
		puts "Blog Post Title"
		post.title = gets.chomp
		puts "Blog Post Body:"
		post.content = gets.chomp
		post.created = Time.now
		post.save
		puts "Do you want to create another post? [y/n]"
		create if gets.chomp.downcase == 'y'
	end

	def title
		@title
	end

	def title=(title)
		@title = title
	end

	def content
		@content
	end

	def content=(content)
		@content = content
	end

	def created
		@created
	end

	def created=(created)
		@created = created
	end

	def save
		BlogPost.add(self)
	end
end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
