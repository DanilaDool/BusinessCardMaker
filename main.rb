require 'erb'
require 'securerandom'

base_template = File.read('/home/danila/ror/visit-html/template.html.erb')

erb = ERB.new(base_template)

puts 'Программа создаст визитку на основе ваших данных.'

puts 'Введитее имя и фамилию:'
@name_and_surname = STDIN.gets

puts 'Введите должность:'
@job_title = STDIN.gets

puts 'Введите url фотографии:'
@url_img = STDIN.gets

puts 'Введите телефон:'
@phone = STDIN.gets

puts 'Введите email:'
@email = STDIN.gets

result = erb.result(binding)

file_name = "index_#{SecureRandom.hex(4)}.html"

File.write(file_name, result)

puts "HTML-файл успешно создан: #{file_name}"
