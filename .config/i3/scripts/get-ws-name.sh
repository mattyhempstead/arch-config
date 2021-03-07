#### NOT USED

# Returns the name of the workspace from the currently focused monitor with a given number

# Get name currently focused output (monitor)
output=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).output')

# Get workspace name with given number
name=$(i3-msg -t get_workspaces | jq -r '.[] | select(.output == "'"$output"'" and .num == '"$1"').name')


# If workspace does not already exist, return new workspace name of the form XY:
if [[ -z "$name" ]]
then
    echo $1$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name' | cut -b 2):
else
    echo $name
fi

