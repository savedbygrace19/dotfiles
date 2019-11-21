#
# The contents of this file are guarded by the setting of BASHPROFILE
# because this file oddly seems to be executed twice when running on
# Windows.
#
echo 'Executing .bash_profile'

# if [[ "$BASHPROFILE" != d* ]]; then

    echo 'Initializing bash shell (.bash_profile)...'

    #
    # Detect the operating system
    #
    platform='UNKNOWN'   # Possible values: Windows, Mac, UNKNOWN
    unamestr=`uname`
    if [[ $unamestr == MINGW32* ]]; then
	    echo 'Detected Windows'
        platform='Windows'
    elif [[ $unamestr == MINGW64* ]]; then
        echo 'Detected Windows'
        platform='Windows'
    elif [[ $unamestr == Darwin* ]]; then
	    echo 'Detected OSX'
        platform='Mac'
    else
        echo '========================================'
        echo 'ERROR!'
        echo 'Detected operating system: UNKNOWN'
        echo '========================================'
    fi

    #
    # Platform-specific initialization
    #
    if [[ $platform == 'Mac' ]]; then
        export DROPBOXHOME=~/CloudStation/home
        export CLOUDHOME=$DROPBOXHOME
        source "$HOME/dev/kwp/dotfiles/bash_profile_mac.bash"
        source "$HOME/dev/kwp/dotfiles/bash_profile_common.bash"

    elif [[ $platform == 'Windows' ]]; then
        source ~/dev/kwp/dotfiles/bash_profile_win.bash
        source ~/dev/kwp/dotfiles/bash_profile_common.bash
    fi

    export BASHPROFILE="done"
# fi
