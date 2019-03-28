#!/usr/bin/env bash

set_locale ()
{
    if [[ $(locale -a | grep ^fr_FR.UTF-8) ]] || [[ $(locale -a | grep ^fr_FR.utf8) ]]; then
        if ! $(grep -E "(fr_FR.UTF-8)" "$HOME/.bashrc"); then
            # Setting the bashrc locale
            echo "export LC_ALL=fr_FR.UTF-8" >> "$HOME/.bashrc"
            echo "export LANG=fr_FR.UTF-8" >> "$HOME/.bashrc"
            echo "export LANGUAGE=fr_FR.UTF-8" >> "$HOME/.bashrc"

            # Setting the current shell locale
            export LC_ALL="fr_FR.UTF-8"
            export LANG="fr_FR.UTF-8"
            export LANGUAGE="fr_FR.UTF-8"
        fi
    else
        # Install en_US.UTF-8 Locale
        sudo locale-gen fr_FR.UTF-8
        sudo update-locale LANG=fr_FR.UTF-8

        # Setting the current shell locale
        export LC_ALL="fr_FR.UTF-8"
        export LANG="fr_FR.UTF-8"
        export LANGUAGE="fr_FR.UTF-8"

        # Setting the bashrc locale
        echo "export LC_ALL=fr_FR.UTF-8" >> "$HOME/.bashrc"
        echo "export LANG=fr_FR.UTF-8" >> "$HOME/.bashrc"
        echo "export LANGUAGE=fr_FR.UTF-8" >> "$HOME/.bashrc"
    fi
}
