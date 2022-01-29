# name: excerpt-plugin
# about: A super simple plugin to customize excerpts
# version: 0.0.1
# authors: osvid

after_initialize do

  # change excerpt format
  class ::Post
    module ExcerptForTopicPoemame
      def excerpt_for_topic
        Post.excerpt(cooked, 500, keep_newlines: true, strip_links: true)
      end
    end
    prepend ExcerptForTopicPoemame
  end
end
