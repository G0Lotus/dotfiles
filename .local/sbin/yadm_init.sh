mkdir -p ${HOME}/.cache
mkdir -p ${HOME}/.local
git clone https://gitee.com/wangl-cc/yadm.git ${HOME}/.cache/yadm.git
cd ${HOME}/.cache/yadm.git ; make install PREFIX=${HOME}/.local
export PATH=${HOME}/.local/bin:${PATH}

yadm clone https://github.com/G0Lotus/dotfiles.git
yadm checkout
if [ $? != 0 ]; then
	echo "yadm can't checkou out config"
	echo "Backing up pre-existing dot files in ${HOME}/.config-backup"
	mkdir -p ${HOME}/.config-backup
	yadm checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} ${HOME}/.config-backup/{}
fi
echo "yadm checked out config"
echo "yadm bootstrap starting ......"
yadm bootstrap
echo "yadm bootstrap done!"
echo "Enjoy config now!"
