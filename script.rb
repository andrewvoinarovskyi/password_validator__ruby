# open and read file
path = ARGV.first
file = File.open(path, 'r')
textline_passwords = file.read()


