require 'ruble'
require 'ruble/terminal'

command 'Run JetPack' do |cmd|
  cmd.key_binding = 'M1+R'
  cmd.scope = ''
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do
    # TODO Save current file
    # TODO Get working dir as parent of file
    # ENV['TM_DIRECTORY']
    Ruble::Terminal.open('cfx run' + " --pkgdir="+ENV['TM_DIRECTORY'])
  end
end

