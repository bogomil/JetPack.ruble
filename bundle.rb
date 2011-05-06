require 'ruble'

bundle do |jetpack|
	jetpack.display_name = "JetPack"
	jetpack.author = "Shopov Bogomil<shopov.bogomil@gmail.com>"
	jetpack.description = "Simple commands and snippets for Mozilla JetPack"
	jetpack.copyright = "DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE Version 2, December 2004"
	jetpack.repository = "https://github.com/bogomil/JetPack.ruble"

	jetpack.file_types['source.json']='*.json'

	#defining the menu
	jetpack.menu 'Mozilla JetPack' do |main_menu|
    main_menu.command 'Run JetPack'
  end
end