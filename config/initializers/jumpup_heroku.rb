Jumpup::Heroku.configure do |config|
  config.app = 'desafio-programacao'
end if Rails.env.development?
