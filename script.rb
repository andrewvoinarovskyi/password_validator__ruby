# open and read file
path = ARGV.first || 'passwords.txt'
file = File.open(path, 'r')
textline_passwords = file.read()

# parse line into condition-password pairs
passwords_with_conditions = textline_passwords.split(/\n/)
condition_password_pair = passwords_with_conditions.map { |line| line.split(/\:\s/) }

# check all rules
result = 0

condition_password_pair.each { |pair|
  password = pair[1]
  sign, cond = pair[0].split(' ')
  min, max = cond.split('-')
  if password.count(sign).between?(min.to_i, max.to_i)
    result += 1
  end
}

puts result
