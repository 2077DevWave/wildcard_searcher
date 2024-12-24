# File Search with Wildcard Pattern

A Bash script for recursively searching files and directories matching a wildcard pattern.

## Description

This script searches for files and directories that match a given wildcard pattern through the current directory and all subdirectories, displaying full paths of matching items.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Requirements](#requirements)
- [Technical Details](#technical-details)
- [Examples](#examples)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. Download the script:
```bash
wget https://github.com/2077DevWave/wildcard_searcher/releases/download/V1/my.sh
```

2. Make it executable:
```bash
chmod +x my.sh
```

## Usage

Basic syntax:
```bash
./my.sh <wildcard_pattern>
```

The pattern should be quoted to prevent premature shell expansion:
```bash
./my.sh "hello*"
./my.sh "*.txt"
./my.sh "test?"
```

## Features

- Recursive search through directories
- Full path display
- Wildcard pattern matching
- Directory traversal
- Error handling

### Supported Wildcards
- `*` - Matches any string of characters
- `?` - Matches any single character
- `[]` - Matches any character within brackets

## Requirements

- Bash shell environment
- Execute permissions on script
- Read permissions on directories to be searched

## Technical Details

### Components

1. **Input Validation**
   - Validates command line arguments
   - Provides usage message for incorrect input

2. **Pattern Handling**
   ```bash
   pattern="$1"
   ```

3. **Recursive Search Function**
   ```bash
   search_files() {
       local current_dir="$1"
       local pattern="$2"
       # ... search logic ...
   }
   ```

### Commands Used
- `cd` - Directory navigation
- `pwd` - Working directory path
- `echo` - Output display
- `exit` - Script termination

### Shell Features
- `[ ]` - Test command
- `$#` - Argument count
- `$0` - Script name
- `$1` - First argument
- `$()` - Command substitution

## Examples

1. Find all Python files:
```bash
./my.sh "*.py"
```

2. Find directories starting with "test":
```bash
./my.sh "test*/"
```

Example output:
```
/home/user/test.py
/home/user/projects/test_dir/
/home/user/docs/testing.py
```

## Troubleshooting

### Common Issues

1. **Permission Denied**
   ```bash
   chmod +x my.sh
   ```

2. **Pattern Not Working**
   - Ensure pattern is quoted
   - Check directory permissions

### Debug Mode
Add `-x` to shebang line:
```bash
#!/bin/bash -x
```

## Limitations

- Case-sensitive matching
- No symbolic link following
- May be slow on large directories
- Single pattern only

## Future Improvements

- [ ] Case-insensitive search option
- [ ] Depth limit option
- [ ] Symbolic link support
- [ ] Multiple pattern support
- [ ] File size/date filters

## Contributing

1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Create Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Authors

- **Arian Kermani** - *Initial work*

## Acknowledgments

- Bash documentation
- Shell scripting community
- Stack Overflow contributors
