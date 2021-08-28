# 4colors

![image](https://user-images.githubusercontent.com/981184/131224929-09ca0ecc-3103-4b14-a1c5-fdaff1afe55f.png)

![image](https://user-images.githubusercontent.com/981184/131224946-04a4da9e-b198-4bd6-846d-67e7ba04b8a7.png)

4colors is a distraction-free, dark colorscheme for vim that only uses 4 colors. It's still work in progress, so feedback is appreciated.

The goals here are:

- minimalism - don't get distracted by a rainbow and focus on your coding
- easy customization - simply change the 4 colors
- terminal compatibility

The plugin also comes with a vim-airline theme, which is very lightweight.

## Installation

Install with your favorite plugin manager, or manually via:

    git clone https://github.com/mihaifm/4colors ~/.vim/pack/mybundle/start/

If you are using airline, add this to your vimrc:

    let g:airline_theme='4colors'

## Customization

To customize the theme, you can change the 4 colors (and optionally the 4 grays) at the top of the script.

You can choose any color that broadly fits into a pallete:

* warm - hot - chill - cold
* white - gray - dark - black

Use the [global variables](https://github.com/mihaifm/4colors/blob/f0b50e4e58f2d6c8a9ae989a26f5d6b2dcaeabee/colors/4colors.vim#L13) as guidance.

## License

MIT

*Enjoy!*
