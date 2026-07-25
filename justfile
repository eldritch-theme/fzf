default: write

_deploy_palette VARIANT \
    background \
    currentline surface overlay \
    foreground comment \
    cyan green \
    orange pink purple \
    red yellow:
    sed \
        -e "s/@@BACKGROUND@@/{{background}}/g" \
        -e "s/@@CURRENTLINE@@/{{currentline}}/g" \
        -e "s/@@SURFACE@@/{{surface}}/g" \
        -e "s/@@OVERLAY@@/{{overlay}}/g" \
        -e "s/@@FOREGROUND@@/{{foreground}}/g" \
        -e "s/@@COMMENT@@/{{comment}}/g" \
        -e "s/@@CYAN@@/{{cyan}}/g" \
        -e "s/@@GREEN@@/{{green}}/g" \
        -e "s/@@ORANGE@@/{{orange}}/g" \
        -e "s/@@PINK@@/{{pink}}/g" \
        -e "s/@@PURPLE@@/{{purple}}/g" \
        -e "s/@@RED@@/{{red}}/g" \
        -e "s/@@YELLOW@@/{{yellow}}/g" \
        .eldritch-fzf-@@VARIANT@@.rc > themes/eldritch-fzf-{{VARIANT}}.rc

write:
    mkdir -p themes

    # Cthulhu palette
    just _deploy_palette "cthulhu" \
        "#212337" \
        "#323449" "#454759" "#5b5c66" \
        "#ebfafa" "#7081d0" \
        "#04d1f9" "#37f499" \
        "#f7c67f" "#f265b5" "#a48cf2" \
        "#f16c75" "#f1fc79"

    # Abyss palette
    just _deploy_palette "abyss" \
        "#171928" \
        "#252738" "#353746" "#474852" \
        "#d8e6e6" "#506299" \
        "#0396b3" "#2dcc82" \
        "#d4a666" "#d154a1" "#8b75d9" \
        "#cc5860" "#ccd663"

    # Dusk palette
    just _deploy_palette "dusk" \
        "#f0f3f4" \
        "#e2e6e8" "#d5d9db" "#c9cbcd" \
        "#1e2029" "#5b73dc" \
        "#0ad6ff" "#38ff9f" \
        "#ffaf4d" "#fb5bb6" "#8a69f7" \
        "#fb5b66" "#fff952"
