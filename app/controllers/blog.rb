require 'rss'
Padrinorb.controllers :blog do
  
  get :index do
    url = 'http://www.padrinorb.com/blog.rss'
    @rss = RSS::Parser.parse(url)
    render 'blog/index'
  end

end
