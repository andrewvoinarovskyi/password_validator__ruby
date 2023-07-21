# to run this script, move to the current directory and run: 'ruby script.rb "passwords.txt"'

path = ARGV.first || 'passwords.txt'
file = File.open(path, 'r')

passwords_with_conditions = file.read.split(/\n/)
condition_password_pair = passwords_with_conditions.map { |line| line.split(/\:\s/) }

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
return result
