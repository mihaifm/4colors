# 4colors

![image1](https://github.com/mihaifm/4colors/assets/981184/6349cbe0-6a06-4e2c-8aa8-8d92fdb8e195)

![image2](https://github.com/mihaifm/4colors/assets/981184/81daed10-c700-4175-9a98-24ed49c396d5)

4colors is a distraction-free, dark colorscheme for vim that only uses 4 colors. It's still work in progress, so feedback is appreciated.

The goals here are:

- minimalism - don't get distracted by a rainbow and focus on your coding
- easy customization - simply change the 4 colors
- terminal compatibility

The plugin also comes with vim-airline and lightline themes.

## Installation

Install with your favorite plugin manager, or manually via:

    git clone https://github.com/mihaifm/4colors ~/.vim/pack/mybundle/start/

If you are using airline, add this to your vimrc:

    let g:airline_theme='4colors'

For lightline:

    let g:lightline = { 'colorscheme': '4colors' }

## Customization

To customize the theme, you can change the 4 colors (and optionally the 4 grays) at the top of the script.

You can choose any color that broadly fits into a pallete:

* warm - hot - chill - cold
* white - gray - dark - black

Use the [global variables](https://github.com/mihaifm/4colors/blob/f0b50e4e58f2d6c8a9ae989a26f5d6b2dcaeabee/colors/4colors.vim#L13) as guidance.

## License

MIT

*Enjoy!*
