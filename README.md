# zsh-flatpak

Add ```source ~/.zsh/zsh-flatpak/zsh-flatpak-zsh``` to your .zshrc

When the script is ran, it adds the following alias, along with aliases for each install flatpak application.

### Aliases
|Name|What|Command|
|:--:|:--:|:-----:|
|flatpaks|List all installed flatpak applications|```flatpak list```|
|fp-a|Show all flatpak application aliases|```fp-a='alias | grep "flatpak run"'```|
|fp-alias|Show all flatpak application aliases|```fp-a```|
|fp-in|Install a flatpak application|```flatpak install```|
|fp-inu|Install a user flatpak application|```flatpak install --user```|
|fp-ls|List all installed flatpak applications|```flatpak list```|
|fp-lsu|List all installed user flatpak applications|```flatpak list --user```|
|fp-se|Search for a flatpak application|```flatpak search```|
|fp-seu|Search for a user flatpak application|```flatpak search --user```|
|fp-up|Update all flatpak applications|```flatpak update```|
|fp-upu|update user flatpak applications|```flatpak update --user```|


### Functions
#### flatpak_add_alias <flatpak application>[ run args]
Creates an alias for the application
Usage: ```flatpak_add_alias com.valvesoftware.Steam --user```
Results: An alias named `steam` that executes ```flatpak run --user com.valvesoftware.Steam```
