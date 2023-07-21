# open and read file
path = ARGV.first
file = File.open(path, 'r')
textline_passwords = file.read()

# parse line into condition-password pairs

passwords_with_conditions = textline_passwords.split(/\n/)
condition_password_pair = passwords_with_conditions.map { |line| line.split(/\:\s/) }

# check all rules



# puts result;
