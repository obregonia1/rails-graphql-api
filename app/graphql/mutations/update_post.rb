module Mutations
  class UpdatePost < BaseMutation
    argument :params, Types::Inputs::PostInputType, required: true

    def resolve(params:)
      post_params = params.to_h
      post = Post.find(post_params.delete(:id))
      post.update!(post_params.compact)
      post
    end
  end
end
