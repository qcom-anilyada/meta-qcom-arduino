LINUX_VERSION:ventuno-q = "7.1"
SRCREV:ventuno-q = "a8333ec565679efd20a9e5dfcdab8cc97e3bfcb2"
KBUILD_CONFIG_EXTRA:remove:ventuno-q = "${S}/arch/arm64/configs/prune.config ${S}/arch/arm64/configs/qcom.config"
SRCBRANCH:ventuno-q = "nobranch=1"
SRCBRANCH:class-devupstream:ventuno-q = "branch=early/hwe/arduino"
# The shikra patches carried by meta-qcom target the qcom-next 7.2 tree and
# do not apply on top of the kernel-topics arduino branch.
SRC_URI:remove:ventuno-q = " \
    git://github.com/qualcomm-linux/kernel.git;${SRCBRANCH};protocol=https \
    file://0001-PENDING-arm64-dts-qcom-shikra-iqs-evk-Rename-HDMI-br.patch \
    file://0002-PENDING-arm64-dts-qcom-shikra-Add-DSI-HDMI-overlay-s.patch \
    file://0003-PENDING-arm64-dts-qcom-shikra-Add-DLC-panel-overlay-.patch \
    file://0004-PENDING-arm64-dts-qcom-shikra-Add-LVDS-panel-overlay.patch \
    file://0005-PENDING-arm64-dts-qcom-shikra-iqs-evk-Remove-unused-.patch \
"
SRC_URI:append:ventuno-q = " git://github.com/qualcomm-linux/kernel-topics.git;${SRCBRANCH};protocol=https"
