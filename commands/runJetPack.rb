require 'ruble'
require 'ruble/terminal'



command 'Run this JetPack in browser' do |cmd|
  cmd.key_binding = 'M1+R'
  cmd.scope = ''
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do
    # run the script
    Ruble::Terminal.open('cfx run' + " --pkgdir="+ENV['TM_DIRECTORY'])
  end
end
  
 

command 'Create XPI' do |cmd|
  cmd.key_binding = 'M1+I'
  cmd.scope = ''
  cmd.output = :none
  cmd.input = :none
  cmd.invoke do
    #open build in docs
    Ruble::Terminal.open('cfx xpi' + " --pkgdir="+ENV['TM_DIRECTORY'])
  end
end


command 'View Docs' do |cmd|
  cmd.key_binding = 'M1+D'
  cmd.scope = ''
  cmd.output = :none
  cmd.input = :none
  cmd.invoke do
    #open build in docs
    Ruble::Terminal.open('cfx docs')
  end
end

command 'Test the environment' do |cmd|
  cmd.key_binding = 'M1+T'
  cmd.scope = ''
  cmd.output = :none
  cmd.input = :none
  cmd.invoke do
    #open build in docs
    Ruble::Terminal.open('cfx test' + " --pkgdir="+ENV['TM_DIRECTORY'])
  end
end