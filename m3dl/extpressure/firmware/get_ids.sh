arm-none-eabi-gdb --batch \
                    -ex 'target extended-remote /dev/ttyACM0' \
                    -ex 'monitor swdp_scan' \
                    -ex 'attach 1' \
                    -ex "file build/extpressurefw.elf" \
                    -ex 'break sp100.c:126' \
                    -ex 'continue' \
                    -ex 'continue' \
                    -ex 'continue' \
                    -ex 'continue' \
                    -ex 'printf "%d %d %d %d\n", sp100s[0].id, sp100s[1].id, sp100s[2].id, sp100s[3].id'
