# List installed flatpaks
alias flatpaks='flatpak list'

# Show flatpak alias
alias fp-a='alias | grep "flatpak run"'
alias fp-alias=fp-a

# Install flatpaks
alias fp-in='flatpak install'
alias fp-inu='flatpak install --user'

# List installed flatpaks
alias fp-ls='flatpak list'
alias fp-lsu='flatpak list --user'

# Search flatpaks
alias fp-se='flatpak search'
alias fp-seu='flatpak search --user'

# Update flatpaks
alias fp-up='flatpak update'
alias fp-upu='flatpak update --user'

# Adds a single flatpak alias given the application name
flatpak_add_alias () {
	# Using Application name, extract the name and lowercase it
	local name=$(echo ${1:l} | grep -Po '[^\.]+$')

	# Create the zsh function to launch the flatpak app
	#$name () { flatpak run $1 }

	# Alias the function
	alias $name="flatpak run $1"
	
}

# Adds an alias for every install flatpak application
foreach app in $(flatpak list --columns=application --app) ; do
    flatpak_add_alias $app
; done
