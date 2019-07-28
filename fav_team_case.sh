#!/bin/bash

echo -n "Enter your favorite NFC North team: ";read team

        case "$team" in
                "Bears") echo "The Monsters of the Midway!";;
                "Packers") echo "Oh, I think you meant Hot Garbage!";;
                "Lions") echo "Rebuilding since 1957 huh?";;
                "Vikings") echo "Why dont the Vikings eat cereal?  Everytime they get close to a bowl they choke.";;
                * ) echo ""$team" is not in the NFC North."
        esac
