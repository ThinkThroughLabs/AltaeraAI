DISTRO_NAME="Artix_AltaeraAI"
DISTRO_COMMENT="Artix Linux utilised by the AltaeraAI project"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v3.18.1/artix-aarch64-pd-v3.18.1.tar.xz"
TARBALL_SHA256['aarch64']="9801031864da6bc9dc69293695797f8aba7866c273bb7403f95c4e70be987936"

distro_setup() {
	run_proot_cmd yes | pacman -Syu
	run_proot_cmd yes | pacman -S curl wget procps
	run_proot_cmd wget --no-check-certificate https://raw.githubusercontent.com/latestissue/AltaeraAI/main/scripts/altaera_install_pt-3.sh
 	run_proot_cmd chmod a+x 'altaera_install_pt-3.sh'
 	run_proot_cmd bash 'altaera_install_pt-3.sh'
}
