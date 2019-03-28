#!/usr/bin/env bash

menu_manage_explorer_help ()
{
    ascii

    text_yellow "    Install OCKHAM Explorer (I)"
    text_white "    installs OCKHAM Explorer on your server."
    echo

    text_yellow "    Stop OCKHAM Explorer (K)"
    text_white "    stops the OCKHAM Explorer process (shown only if the OCKHAM Explorer process is running)."
    echo

    text_yellow "    Start OCKHAM Explorer (S)"
    text_white "    starts the OCKHAM Explorer process (shown only if OCKHAM Explorer is installed)."
    echo

    text_yellow "    Restart OCKHAM Explorer (R)"
    text_white "    restarts (stops and then starts) the OCKHAM Explorer process (shown only if OCKHAM Explorer is installed and running)."
    echo

    text_yellow "    Update OCKHAM Explorer (U)"
    text_white "    updates OCKHAM Explorer if a new version is available (shown only if OCKHAM Explorer is installed)."
    echo

    text_yellow "    Uninstall OCKHAM Explorer (P)"
    text_white "    uninstalls OCKHAM Explorer from your system (shown only if OCKHAM Explorer is installed)."
    echo

    text_yellow "    Show Log (L)"
    text_white "    shows the PM2 explorer process log."
    echo

    text_yellow "    Show Help (H)"
    text_white "    opens the help file where all this information is available."

    divider

    text_blue "    For more information head over to https://docs.ockham.consulting/"
    echo

    press_to_continue

    menu_main
}
