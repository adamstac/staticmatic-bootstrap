require "grit"

module CodeHelper
  def code(tag, file)
    
    r = Grit::Repo.new('/home/nick/projects/peters-guide')
    c = r.tag(tag).commit
    
    CodeRay.scan((c.tree/file).data, :ruby).html(:line_numbers => :inline).div
  end
end