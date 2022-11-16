# Neovim-config
Dit is mijn neovim configuration setup met alle code die nodig is om het mooi te laten lijken in de terminal.

## Wat alles doet
- De init.lua file zorgt ervoor dat alles uit alle mappen wordt gepakt en goed gebruikt kan worden door neovim.
- In de map After zit mijn colorscheme van de editor
- In de plugin folder zijn alle plugins die zijn geïnstalleerd goed geschreven door Packer.
- In de lua/user folder zitten alle configuraties om alles werkende te krijgen
	- Set.lua zorgt ervoor dat mijn tabs 4 spaties zijn en dat het ook echt spaties zijn ook wordt mijn cursor dun zodra ik in invoeg modus zit
	- In packer.lua zitten alle imports via github linkjes om alle plugins te kunnen installeren
	- In keymap.lua wordt ervoor gezorgd dat ik van een paar functies van vim, dus de voorganger van neovim gebruik kan maken
	- De file cmp.lua zorgt ervoor dat ik net zoals in VSCode gebruik kan maken van autocompletion van functienamen en nog veel meer
	- Autopairs.lua zorgt ervoor dat ik als ik haakjes open en gesloten wil dat, dat ook wordt gedaan want dat gaat niet automatisch in neovim
	- In de Map lsp zitten een aantal configuraties waardoor ik gebruik kan maken van linters om te kijken of mijn code wel in Flake8 is geschreven
