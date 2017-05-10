# MonkeyTech Day Swift Koans

The Koans walk you along the path to enlightenment in order to learn Swift! The goal is to learn the language,
it's basic and specific concepts through syntax, common functions and libraries.

## Install Koans

First clone this repository.

```sh
git clone https://github.com/monkeytechdays/mktd4-swift-starter.git 
```

Then fetch all branches.

```sh
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
   git branch --track ${branch#remotes/origin/} $branch
done
```

## Building Koans

Since this Koans is designed in Swift it's compilation can easily done using Swift
command.

```js
$ swift build
Fetching https://github.com/onevcat/Rainbow
Cloning https://github.com/onevcat/Rainbow
Resolving https://github.com/onevcat/Rainbow at 2.0.1
warning: module 'MKTKoansTests' does not contain any sources.
warning: module 'MKTKoansTests' does not contain any sources.
Compile Swift Module 'Rainbow' (11 sources)
Compile Swift Module 'MKTKoansRunner' (6 sources)
Compile Swift Module 'MKTUtils' (1 sources)
Compile Swift Module 'MKTCore' (1 sources)
Linking ./.build/debug/MKTKoansRunner
$ 
```

As mentioned a binary `.build/debug/MKTKoansRunner` is available.

## Running Koans

 ```sh
$ ./bin/koans
 🍺  usage: ./bin/koans start|previous|current|run|next|end
 ```

This command let's you
- `start` from the beginning
- goto `previous` step
- show `current` step
- `run` tests
- goto `next` step
- `end` exercises

## License

Copyright (C)2017 D. Plaindoux.

This program is free software; you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation; either version 2, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along with this program; see the file COPYING. If not, write to the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
