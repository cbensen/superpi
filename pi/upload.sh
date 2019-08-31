if [ "$#" -ne 1 ]; then
    echo "You forgot the IP address of the Pi"
    exit
fi

scp configure.sh pi@$1:
scp setup.sh pi@$1:
scp clone.sh pi@$1: