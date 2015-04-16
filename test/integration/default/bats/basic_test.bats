@test "File is installed at right place" {
        ls -la /usr/bin/analog
}

@test "File has executable right" {
        test -x /usr/bin/analog
}

@test "File is of right version" {
        /usr/bin/analog 2>/dev/null | grep "analog 6.0"
}
