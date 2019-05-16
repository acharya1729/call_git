# frozen_string_literal: true

# Git Issue uses the github_api gem
# date_range_issue is a general method for any date range
class GitIssue
  def issues(user:, repo:)
    issues = Github::Client::Issues.new
    issues_list = issues.list(user: user, repo: repo, state: 'open').body
    [
      { open_today: todays_issue_list(issues_list: issues_list).count },
      { open_this_week: weekly_issue_list(issues_list: issues_list).count },
      { open_before_this_week: old_issues_list(issues_list: issues_list).count },
      { totals_issues: issues_list.count }
    ]
  end

  def date_range_issue(issues_list:, from:, to:)
    issues_list.select { |issue| issue.created_at >= from && issue.created_at <= to }.map(&:body)
  end

  def todays_issue_list(issues_list:)
    issues_list.select { |issue| issue.created_at >= 1.day.ago }.map(&:body)
  end

  def weekly_issue_list(issues_list:)
    issues_list.select { |issue| issue.created_at >= 7.days.ago && issue.created_at <= 1.day.ago }
               .map(&:body)
  end

  def old_issues_list(issues_list:)
    issues_list.select { |issue| issue.created_at <= 7.days.ago }.map(&:body)
  end
end
