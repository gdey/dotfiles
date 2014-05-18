use v5.12.0;
use FindBin;

description "Setting up Bash Profile" => sub {
   link_file ".profile" => "profile";
};

description "Setting up git" => sub {
  link_file [
    ".gitconfig", 
    ".gitignore_global",
    ".gitk",
    ] => "git";
  
};

description "Setting up Screen" => sub {
  link_file ".screenrc" => "screen";
};

description "Setting up zsh" => sub {
  link_file ".zshrc" => "zsh";
};

description "Setting up Vim" => sub {
  link_file [ ".vim", ".vimrc", ".gvimrc" ] => "vim" ;
  make_dir { recursive => YES }, map {"$dotdir/vim/$_"} qw(backup tmp);
};

description "Setting up Perl" =>  sub {
   link_file ".perltidyrc" => "perl";
};




