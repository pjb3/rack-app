$:.unshift 'lib'
require 'slim'
require 'application_controller'
require 'about_controller'
require 'home_controller'
require 'bios_controller'
require 'router'
require 'application'
require 'time'

use Rack::Session::Cookie, secret: 'secret'
run Application.new
