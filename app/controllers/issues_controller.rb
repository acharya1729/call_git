# frozen_string_literal: true

# Issues page, /issues/action_name, pass user and repo in params
class IssuesController < ApplicationController
  def index
    user = params[:user]
    repo = params[:repo]
    raise ActionController::ParameterMissing if user.nil? || repo.nil?
    git = GitIssue.new
    @response = git.issues(user: user, repo: repo)
    render status: :ok, json: @response
  end
end
