    file_name=$1 # Get the first argument as filename

    # Get the absolute path of the file
    path=$(pwd)/$file_name  

    # Ensure the path exists
    if [ -e $path ] 
    then
        # Get the desktop directory path
        desktop_path=$(xdg-user-dir DESKTOP)

        # Get the full path of the desktop link
        link_path=$desktop_path/$file_name

        # Create the desktop link
        ln -s $path $link_path

        echo "Link created successfully!" 
    else 
        echo "The given path does not exist. Try again."
    fi

