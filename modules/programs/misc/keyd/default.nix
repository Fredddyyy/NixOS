{ pkgs, ... }:
{
  services.keyd = {
    enable = true;

   keyboards = {
      tartarus = {
        ids = [ "1532:022b" ];

        settings = {
          main = {
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "tab" = "8";
            "q" = "q";
            "w" = "w";
            "e" = "e";
            "r" = "6";
            "capslock" = "leftshift";
            "a" = "a";
            "s" = "s";
            "d" = "d";
            "f" = "7";
            "leftshift" = "9";
            "z" = "0";
            "x" = "-";
            "c" = "=";
            "leftalt" = "tab";
            "space" = "space";
            "left" = "p";
            "right" = "c";
            "up" = "i";
            "down" = "m";
          };
        };
      };
    }; 
    keyboards.mouth = {
      ids = [ "1532:0084" ];

      settings = {
        main = {
          "mouse1" = "mouse1";
           "mouse2" = "mouse2";
          #};
          #ffxiv = {
          #"mouse1" = "leftalt";
          #"mouse2" = "leftcontrol";
        };
      };
    };
  };
}
