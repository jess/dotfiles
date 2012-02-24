 Pry.config.tap do |pry|
     pry.editor = 'mvim '
     pry.pager  = false
     pry.prompt = [
         ->(*_) { '>> ' },
         ->(*_) { '|  ' },
       ]
 end
