class Tine < ActiveRecord::Base
	
	before_create :random_string


 def random_string(length=5)
    chars = (Digest::MD5.hexdigest "#{DateTime.now.to_s}")
    code = ''
    length.times { code << chars[rand(chars.size)] }
     puts 1111111111111111
    strng=code.upcase
    self.tiny= strng
   
  end 

end
