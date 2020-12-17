SRC_URI_append_a64 = " file://0001-sun6i-Increase-the-maximum-UART-baud-rate.patch"

ATF_DEPENDS ??= ""

EXTRA_OEMAKE_append_a64 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-sun50i_a64.bin"
ATF_DEPENDS_a64 = " virtual/trusted-firmware-a:do_deploy"

do_compile[depends] .= "${ATF_DEPENDS}"
