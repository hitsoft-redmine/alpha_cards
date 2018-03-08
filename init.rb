Redmine::Plugin.register :alpha_cards do
  name 'SEMAT Alpha Cards plugin'
  author 'Kreosoft'
  description 'Adds Ivar Jacobson\'s SEMAT Alpha cards'
  version '1.0.0'
  url 'http://kreosoft.ru'
  author_url 'http://kreosoft.ru'

  permission :alphacards, { :alphacards => [:index, :updatedata, :updateposition] }, :public => true
  menu :project_menu, :alphacards, { :controller => 'alphacards', :action => 'index' }, :caption => 'Alpha cards', :after => :activity, :param => :project_id
end
