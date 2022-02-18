echo "Setting addon submodule branches to their remote defaults. Please wait..."
cd godot-addons-as-submodules/
git submodule foreach --recursive "../../_set-and-checkout-default-submodule-branch.sh"
cd ..
