// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import "../stylesheets/application"
//= require jquery3
//= require popper
//= require bootstrap
import Rails from '@rails/ujs';
Rails.start();

