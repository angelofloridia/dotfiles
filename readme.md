# Dotfiles
- [Dotfiles: Best way to store them: a bare git repository ](https://www.atlassian.com/git/tutorials/dotfiles)
    - [Video](https://www.youtube.com/watch?v=tBoLDpTWVOM)
- [Theming with Kvantum](https://www.youtube.com/watch?v=R6C-RNhHMrE)
    - [Other video](https://duckduckgo.com/?q=make+kde+beautifull&t=newext&atb=v303-1&iax=videos&ia=videos&iai=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DR6C-RNhHMrE)
- [KDE Configuration Files (DOTs)](https://github.com/shalva97/kde-configuration-files)
- [Link local repository to remote repository](https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github)
- [Credential Manager]
(https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git#git-credential-manager)
    - `config config credential.helper store`
- Run the `install.sh` file


# Partitioning
- Create a partition table: GPT
- 1024mb ext4 mount point: /boot/efi label: EFI
- 50gb ext4 mount point: / label: system
- ext4 mount point: /home label: home
