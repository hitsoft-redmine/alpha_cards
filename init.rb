Redmine::Plugin.register :alpha_cards do
  name 'SEMAT Alpha State Cards plugin'
  author 'Kreosoft'
  description 'Adds Ivar Jacobson\'s SEMAT Alpha State Cards to Redmine'
  version '1.0.0'
  url 'https://git.kreosoft.ru/public-tsu/Alphacards'
  author_url 'https://git.kreosoft.ru/public-tsu/Alphacards'

  permission :alphacards, { :alphacards => [:index, :updatedata, :updateposition] }, :public => true
  menu :project_menu, :alphacards, { :controller => 'alphacards', :action => 'index' }, :caption => 'Alpha cards', :after => :activity, :param => :project_id
end
