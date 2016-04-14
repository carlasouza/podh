podh(1) -- Print or didn't happen
=================================

## SYNOPSIS

`podh`<br>
`podh` -c

## DESCRIPTION

Take printscreen and automatically uploads to Dropbox or to a Amazon S3 bucket, inserting into clipboard a shortened URL to access it. Uses Dropbox as default storage.

## OPTIONS

  * `-c`:
    The user will be able to select part of the screen with the cursor.

## FILES

  * $HOME/.podhrc:
    This file should contain your provider configuration:

    `PROVIDER`:
        Must be `amazon` or `dropbox`.

    `S3KEY`:
        Your Amazon AWS S3 Key.
        Required if using `amazon` provider.

    `S3SECRET`:
        Your Amazon AWS S3 Secret.
        Required if using `amazon` provider.

    `BUCKET`:
        Your Amazon AWS S3 bucket name previously created by you. More information
        about bucket creation can be found at:
          http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html.
        Required if using `amazon` provider.

    `DROPBOX_ROOT`:
        Your dropbox instalation.
        Optional if using `dropbox` provider.
        Defaults to `~/.dropbox`.

    `DROPBOX_REPO`:
        Your dropbox repository directory.
        Optional if using `dropbox` provider.
        Defaults to `~/Dropbox`.

## KEYBOARD SHORTCUT

Just run this following code:

    echo '"podh"
    Shift + F5
    "podh -c"
    Alt + Shift + F5' >> ~/.xbindkeysrc
    xbindkeys

Creates these two shortcuts:

  * `<Shift> + <F5>`:
    Full printscreen

  * `<Alt> + <Shift> + <F5>`:
    Cropped printscreen


## DISCLAIMER

Nobody will ever read this manpage :(

## COPYRIGHT

Podh is Copyright (C) 2013 Carla Souza `<http://carlasouza.com>`.
License GPLv3+: GNU GPL version 3 or later `<http://gnu.org/licenses/gpl.html>`.
This is free software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law.
