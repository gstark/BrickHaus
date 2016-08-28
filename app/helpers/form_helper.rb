module FormHelper
  def setup_home(home)
    home.links ||= Link.new
    3.times { home.links.build }
    home
  end
end
