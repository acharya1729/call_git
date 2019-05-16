class IssuesController < ApplicationController
  def index
    from, to = nil, nil
    user = params[:user]
    repo = params[:repo]
    git = GitIssue.new
    @response = git.issues(user: user, repo: repo)
    render status: :ok, json: @response
  end

end
