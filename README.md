# Windows 9x Virtual Display Driver

This is a driver that aims to provide high resolution graphics for Windows 95/98/Me guest operating systems in QEMU and VirtualBox. While the [VBEMP](https://bearwindows.zcm.com.au/vbe9x.htm) driver is currently able to do this, it has a few limitations like not being able to run windowed DOS prompts, not supporting arbitrary resolutions, and being closed source. This driver will hopefully provide a solution to all of these problems.

## Building

This project is intended to be build on Linux. Building on Windows (through an environment like MSYS2) may work as well, but is untested.

You will need to install the following tools:

* [OpenWatcom V2](https://github.com/open-watcom/open-watcom-v2/releases/tag/Current-build)
  * At the time of writing this, the linux-x64 version currently has a bug that crashes during installation, so you may need to use the linux-x86 instead version if the 64-bit version of Watcom doesn't install properly.
  * Please make sure that the 16-bit compilers and the Windows 3.x target operating system is selected for installation.
  * Once installation is finished, set the `WATCOM` environment variable to the directory that you chose to install OpenWatcom into.
* [Wine](https://www.winehq.org/) - Usually available from your package manager. Needed in order to run MASM32 on Linux.
* [MASM32 SDK](https://masm32.com/) - Macro Assembler needed for assembly code.
* [mtools](https://www.gnu.org/software/mtools/) - Usually available from your package manager. Needed in order to create an installation floppy disk image.
