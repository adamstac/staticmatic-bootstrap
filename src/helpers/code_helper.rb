require "grit"

module CodeHelper
  def code(tag, file)
    
    repo = Grit::Repo.new(repo_name)
    commit = repo.tag(tag).commit
    
    CodeRay.scan((commit.tree/file).data, :ruby).html(:line_numbers => :inline).div
  end
end