echo "Reference: https://stackoverflow.com/questions/14404704/how-do-i-replace-a-git-submodule-with-another-repo"
echo "Resetting submodules. Please wait..."
rm -rf .git/modules/godot-addons-as-submodules/
rm -rf godot-addons-as-submodules
git submodule sync
git submodule update

echo ""
./pull-submodules.sh

echo ""
echo "Setting submodule godot-addons-as-submodules branch to 'main'..."
git submodule--helper set-branch --branch main godot-addons-as-submodules
cd godot-addons-as-submodules
git branch -u origin/main main
git checkout main
cd ..

echo ""
./_checkout-default-submodule-branches.sh

