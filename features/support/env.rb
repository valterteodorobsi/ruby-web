require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
#require 'faker'
#require 'cpf_faker'
require 'allure-cucumber'


time  = Time.new
time = time.strftime('%d-%m-%Y')
$logger = Logger.new("./exec-logs/exec-log-#{time}.log")



env = ENV['BROWSER']


Capybara.register_driver :site_prism do |app|
  case env
  when 'chrome'
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  when 'firefox'
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  when 'internet_explorer'
    Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
  when 'safari'
    Capybara::Selenium::Driver.new(app, browser: :safari)
  end




end

Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 30
  config.app_host = 'http://siad.consinter.org/'
  #config.app_host =  'http://148.91.232.227/CMS-ISSUER/loginUser.jsf?dswid=5303'
  #http://siad.consinter.org/
end




Allure.configure do |config|
  config.results_directory = './allure-results/'
  config.clean_results_directory  = false
end

def esvaziar_pasta(caminho_pasta)
  Dir.foreach(caminho_pasta) do |arquivos|
    arquivo = File.join(caminho_pasta, arquivos)
    if (arquivos != '.' && arquivos != '..' && arquivos != '.gitkeep' && arquivos != 'environment.properties')
      File.delete(arquivo)
    end
  end
end
#tmp = esvaziar_pasta("#{Dir.pwd}/allure-results/#{env}")
esvaziar_pasta("#{Dir.pwd}/allure-results/#{env}")